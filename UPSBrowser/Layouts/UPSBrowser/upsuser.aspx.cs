using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.Text;
using System.Web.UI;

namespace Kcell.UPSBrowser
{
    public partial class upsuser : LayoutsPageBase
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.UpsUserForm;
        private IUPSUsersDAL upsUsersDAL;
        private enum formModeEnum { NewForm, EditForm };
        private formModeEnum formMode;

        private bool _needParentRefreshing = false;


        private bool needParentRefreshing
        {
            get {
                return _needParentRefreshing;
            }

            set {
                _needParentRefreshing = value;
                ViewState["needParentRefreshing"] = _needParentRefreshing;
            }
        }

        private string userGuid;
        private string identityProviderName;


        public upsuser() : base()
        {
            //upsUsersDAL = FakeUPSUsersDAL.getInstance();
            upsUsersDAL = new UPSUsersDAL();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "Page_Load invoked");

            if (ViewState["needParentRefreshing"] != null)
            {
                needParentRefreshing = (bool)ViewState["needParentRefreshing"];
            }

            if (Request.QueryString["guid"] != null)
            {
                formMode = formModeEnum.EditForm;
                userGuid = Request.QueryString["guid"];
            }
            else
            {
                formMode = formModeEnum.NewForm;
                userGuid = null;
                identityProviderName = Request.QueryString["idp"];
                UPSBrowserLogger.LogDebug(loggingCategory, $"identityProviderName: {identityProviderName}");
            };

            UPSBrowserLogger.LogDebug(loggingCategory, $"formMode: {formMode}, userGuid: {userGuid}");
            SetupFormFields();

            CloseButton.Click += CloseButton_Click;
            DeleteButton.Click += DeleteButton_Click;
            upsbrowser_form_savebutton.Click += SaveButton_Click;
            upsbrowser_form_savebutton.Enabled = false;

            ErrorMessage.Text = "";
            ErrorMessage.Visible = false;
        }

        private void SaveButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "SaveButton_Click invoked");

            User userInfo = new UPSBrowser.User
            {
                UserGuid = UserGuidTextBox.Text,
                WorkEmail = WorkEmailTextBox.Text,
                AccountName = AccountNameTextBox.Text,
                DisplayName = DisplayNameTextBox.Text,
                FirstName = FirstNameTextBox.Text,
                LastName = LastNameTextBox.Text,
                WorkPhone = WorkPhoneTextBox.Text,
                CellPhone = CellPhoneTextBox.Text,
                JobTitle = JobTitleTextBox.Text,
                Department = DepartmentTextBox.Text
            };

            User user;
            if (formMode == formModeEnum.NewForm)
            {
                user = upsUsersDAL.createUser(userInfo, identityProviderName);
                if (user != null)
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "User created successfully");
                    needParentRefreshing = true;

                    // Now the only allowed action is to close the form and return to the main view
                    upsbrowser_form_savebutton.Visible = false;
                    DeleteButton.Visible = false;

                    ErrorMessage.Text = "";
                    ErrorMessage.Visible = false;

                }
                else
                {
                    UPSBrowserLogger.LogError(loggingCategory, "Error creating user");

                    ErrorMessage.Text = "Error creating user";
                    ErrorMessage.Visible = true;

                    return;
                }
            }
            else
            {
                user = upsUsersDAL.updateUser(userInfo);
                if (user != null)
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "User updated successfully");
                    needParentRefreshing = true;

                    ErrorMessage.Text = "";
                    ErrorMessage.Visible = false;
                }
                else
                {
                    UPSBrowserLogger.LogError(loggingCategory, "Error updating user");

                    ErrorMessage.Text = "Error updating user";
                    ErrorMessage.Visible = true;

                    return;
                }
            }
            
            FillTextboxes(user);
        }


        private void DeleteButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "DeleteButton_Click invoked");

            string userGuid = UserGuidTextBox.Text;
            if (upsUsersDAL.deleteUserByGuid(userGuid))
            {
                UPSBrowserLogger.LogDebug(loggingCategory, "User deleted successfully");
                needParentRefreshing = true;

                ErrorMessage.Text = "";
                ErrorMessage.Visible = false;

                CloseForm();
            }
            else
            {
                UPSBrowserLogger.LogError(loggingCategory, "Error deleting user");

                ErrorMessage.Text = "Error deleting user";
                ErrorMessage.Visible = true;

                return;
            }
        }

        private void CloseButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "CloseButton_Click invoked");
            CloseForm();
        }

        private void FormFieldsChanged(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "FormFieldsChanged invoked");
        }


        private void FillTextboxes(User upsUser)
        {
            WorkEmailTextBox.Text = upsUser.WorkEmail;
            AccountNameTextBox.Text = upsUser.AccountName;
            DisplayNameTextBox.Text = upsUser.DisplayName;
            FirstNameTextBox.Text = upsUser.FirstName;
            LastNameTextBox.Text = upsUser.LastName;
            JobTitleTextBox.Text = upsUser.JobTitle;
            DepartmentTextBox.Text = upsUser.Department;
            WorkPhoneTextBox.Text = upsUser.WorkPhone;
            CellPhoneTextBox.Text = upsUser.CellPhone;
            UserGuidTextBox.Text = upsUser.UserGuid;
        }

        private void SetupFormFields()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "SetupFormFields invoked");

            if (formMode == formModeEnum.EditForm)
            {
                if (!IsPostBack)
                {
                    User upsUser = upsUsersDAL.getUserByGuid(userGuid);
                    if (upsUser == null)
                    {
                        string errorMessage = $"Error getting user form UPS by guid: {userGuid}";
                        UPSBrowserLogger.LogError(loggingCategory, errorMessage);
                        throw new Exception(errorMessage);
                    };

                    FillTextboxes(upsUser);
                }
            }
            else
            {
                WorkEmailTextBox.Enabled = true;
                WorkEmailTextBox.ReadOnly = false;
                AccountNameLabel.Visible = false;
                AccountNameTextBox.Visible = false;
                UserGuidLabel.Visible = false;
                UserGuidTextBox.Visible = false;
            };

        }

        private void CloseForm()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "CloseFormWithParentRefresh invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"needParentRefreshing: {needParentRefreshing}");

            StringBuilder sb = new StringBuilder();
            sb.Append("<script type='text/javascript'>");
            if (needParentRefreshing)
            {
                sb.Append("SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.OK, null);");
                sb.Append("window.top.location.href = window.top.location.href;");
            }
            else
            {
                sb.Append("SP.UI.ModalDialog.commonModalDialogClose(SP.UI.DialogResult.cancel, null);");
            }
            sb.Append("</script>");

            ClientScriptManager cs = Page.ClientScript;
            cs.RegisterStartupScript(this.GetType(), "UPSBROWSER_SCRIPT_CLOSE_MODAL", sb.ToString());
        }
    }
}

using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI;
using System.Text;
using Microsoft.SharePoint.Administration;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace Kcell.UPSBrowser
{
    enum UserAccessLevels
    {
        None,
        User,
        Admin
    }

    public partial class upsbrowser : LayoutsPageBase
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.MainPage;

        private IUPSUsersDAL upsUsersDAL;
        private IExternalUsersSource externalUsersSource;
        //private WSExternalUsersSource externalUsersSource;
        private IIdentityProvidersHelper identityProvidersHelper;
        private ITokenSigningCertificatesHelper certsHelper;
        private List<TokenSigningCertificate> certs;

        const string UserProfiles_datasource_ID = "UserProfilesDatasource_ID";
        private ObjectDataSource UserProfilesDatasource;

        const string ImportUsersSearchResults_datasource_ID = "ImportUsersSearchResultDatasource_ID";
        private ObjectDataSource ImportUsersSearchResultsDatasource;

        private JObject settings;
        string identityProviderName = null;
        UserAccessLevels userAccessLevel = UserAccessLevels.None;

        public upsbrowser() : base()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "upsbrowser constructor invoked");

            //upsUsersDAL = FakeUPSUsersDAL.getInstance();
            upsUsersDAL = new UPSUsersDAL();
            
            //externalUsersSource = FakeWSExternalUsersSource.getInstance();
            externalUsersSource = new WSExternalUsersSource();

            identityProvidersHelper = new IdentityProvidersHelper();
            certsHelper = new TokenSigningCertificatesHelper();

            LoadSettings();
        }


        private bool LoadSettings()
        {
            // retrieve saved settings from SPWebApplication property bag
            settings = UPSBrowserSettings.Settings;
            try
            {
                identityProviderName = UPSBrowserSettings.getStringProperty(settings, "identityProviderName");
            }
            catch
            {
                identityProviderName = null;
            };
            return true;
        }

        private bool SaveSettings()
        {
            UPSBrowserSettings.Settings = settings;
            return true;
        }
        
        private bool ValidateSettings()
        {
            if (this.settings == null)
            {
                return false;
            }

            try
            {
                if (
                    string.IsNullOrEmpty(UPSBrowserSettings.getStringProperty(settings, "identityProviderName"))
                    ||
                    string.IsNullOrEmpty(UPSBrowserSettings.getStringProperty(settings, "tokenSigningCertificateThumbprint"))
                    ||
                    string.IsNullOrEmpty(UPSBrowserSettings.getStringProperty(settings, "wsExternalUsersSourceUrl"))
                    )
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }

            return true;
        }

        private void SaveSettingsButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "SaveSettingsButton_Click invoked");

            UPSBrowserSettings.setStringProperty(settings, "identityProviderName", IdentityProvidersDropDownList.SelectedValue);
            UPSBrowserSettings.setStringProperty(settings, "tokenSigningCertificateThumbprint", TokenSigningCertificatesDropDownList.SelectedValue);
            UPSBrowserSettings.setStringProperty(settings, "wsExternalUsersSourceUrl", WSExternalUsersSourceURLTextBox.Text);

            bool result = SaveSettings();
            if (!result)
            {
                DisplayCriticalError("Error saving settings!", true);
            }
        }



        private void InitUserProfilesDatasource()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "InitUserProfilesDatasource invoked");
            UserProfilesDatasource = new ObjectDataSource();
            UserProfilesDatasource.ID = UserProfiles_datasource_ID;
            UserProfilesDatasource.SelectMethod = "GetFilteredUserProfiles";
            UserProfilesDatasource.TypeName = this.GetType().AssemblyQualifiedName; // data access methods are in this same classs
            UserProfilesDatasource.ObjectCreating += new ObjectDataSourceObjectEventHandler(UserProfilesDatasource_ObjectCreating);
            this.Controls.Add(UserProfilesDatasource);
        }

        private void InitImportUsersSearchResultsDatasource()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "InitImportUsersSearchResultsDatasource invoked");

            ImportUsersSearchResultsDatasource = new ObjectDataSource();
            ImportUsersSearchResultsDatasource.ID = ImportUsersSearchResults_datasource_ID;
            ImportUsersSearchResultsDatasource.SelectMethod = "GetFilteredExternalUsers";
            ImportUsersSearchResultsDatasource.TypeName = this.GetType().AssemblyQualifiedName; // data access methods are in this same classs
            ImportUsersSearchResultsDatasource.ObjectCreating += new ObjectDataSourceObjectEventHandler(ImportUsersSearchResultsDatasource_ObjectCreating);
            this.Controls.Add(ImportUsersSearchResultsDatasource);
        }


        private void ConfigureUserProfilesGridViewColumns()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ConfigureUserProfilesGridViewColumns invoked");


            HyperLinkField col1 = new HyperLinkField();
            col1.HeaderText = "Display Name";
            col1.DataTextField = "DisplayName";
            col1.SortExpression = "DisplayName";
            UserProfilesGridView.Columns.Add(col1);

            SPBoundField col2 = new SPBoundField();
            col2.HeaderText = "Account Name";
            col2.DataField = "AccountName";
            col2.SortExpression = "AccountName";
            UserProfilesGridView.Columns.Add(col2);

            SPBoundField col3 = new SPBoundField();
            col3.HeaderText = "Job title";
            col3.DataField = "JobTitle";
            col3.SortExpression = "JobTitle";
            UserProfilesGridView.Columns.Add(col3);

            SPBoundField col4 = new SPBoundField();
            col4.HeaderText = "Department";
            col4.DataField = "Department";
            col4.SortExpression = "Department";
            UserProfilesGridView.Columns.Add(col4);

            
            SPBoundField col5 = new SPBoundField();
            col5.HeaderText = "User guid";
            col5.DataField = "UserGuid";
            UserProfilesGridView.Columns.Add(col5);
        }


        private void ConfigureImportUsersSearchResultsGridViewColumns()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ConfigureImportUsersSearchResultsGridViewColumns invoked");

            HyperLinkField col1 = new HyperLinkField();
            col1.HeaderText = "Display Name";
            col1.DataTextField = "DisplayName";
            col1.SortExpression = "DisplayName";
            ImportUsersSearchResultsGridView.Columns.Add(col1);

            SPBoundField col2 = new SPBoundField();
            col2.HeaderText = "Work Email";
            col2.DataField = "WorkEmail";
            col2.SortExpression = "WorkEmail";
            ImportUsersSearchResultsGridView.Columns.Add(col2);

            SPBoundField col3 = new SPBoundField();
            col3.HeaderText = "Job title";
            col3.DataField = "JobTitle";
            col3.SortExpression = "JobTitle";
            ImportUsersSearchResultsGridView.Columns.Add(col3);

            SPBoundField col4 = new SPBoundField();
            col4.HeaderText = "Department";
            col4.DataField = "Department";
            col4.SortExpression = "Department";
            ImportUsersSearchResultsGridView.Columns.Add(col4);
        }

        private void ConfigureUserProfilesGridView()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ConfigureUserProfilesGridView invoked");

            UserProfilesGridView.Sorting += new GridViewSortEventHandler(UserProfilesGridView_Sorting);
            UserProfilesGridView.PageIndexChanging += new GridViewPageEventHandler(UserProfilesGridView_PageIndexChanging);
            UserProfilesGridView.RowDataBound += new GridViewRowEventHandler(UserProfilesGridView_RowDataBound);
            UserProfilesGridView.PagerTemplate = null;
            UserProfilesGridView.PageSize = 10;
        }

        private void ConfigureImportUsersSearchResultsGridView()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ConfigureImportUsersSearchResultsGridView invoked");
            ImportUsersSearchResultsGridView.Sorting += new GridViewSortEventHandler(ImportUsersSearchResultsGridView_Sorting);
            ImportUsersSearchResultsGridView.RowDataBound += new GridViewRowEventHandler(ImportUsersSearchResultsGridView_RowDataBound);
        }

        private void BindUserProfilesGridView()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "BindUserProfilesGridView invoked");
            UserProfilesGridView.DataSourceID = UserProfiles_datasource_ID;
            UserProfilesGridView.DataBind();
        }

        private void BindImportUsersSearchResultsGridView()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "BindImportUsersSearchResultsGridView invoked");
            ImportUsersSearchResultsGridView.DataSourceID = ImportUsersSearchResults_datasource_ID;
            ImportUsersSearchResultsGridView.DataBind();
        }

        void UserProfilesDatasource_ObjectCreating(object sender, ObjectDataSourceEventArgs e)
        {
            e.ObjectInstance = this;
        }

        void ImportUsersSearchResultsDatasource_ObjectCreating(object sender, ObjectDataSourceEventArgs e)
        {
            e.ObjectInstance = this;
        }

        void UserProfilesGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "UserProfilesGridView_Sorting invoked");
            string lastExpression = "";
            if (ViewState["SortExpression"] != null)
                lastExpression = ViewState["SortExpression"].ToString();
            string lastDirection = "asc";
            if (ViewState["SortDirection"] != null)
                lastDirection = ViewState["SortDirection"].ToString();
            string newDirection = string.Empty;
            if (e.SortExpression == lastExpression)
            {
                e.SortDirection = (lastDirection == "asc") ? System.Web.UI.WebControls.SortDirection.Descending : System.Web.UI.WebControls.SortDirection.Ascending;
            }
            newDirection = (e.SortDirection == System.Web.UI.WebControls.SortDirection.Descending) ? "desc" : "asc";
            ViewState["SortExpression"] = e.SortExpression;
            ViewState["SortDirection"] = newDirection;
            BindUserProfilesGridView();
        }

        void ImportUsersSearchResultsGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ImportUsersSearchResultsGridView_Sorting invoked");
            string lastExpression = "";
            if (ViewState["SortExpressionSearchResults"] != null)
                lastExpression = ViewState["SortExpressionSearchResults"].ToString();
            string lastDirection = "asc";
            if (ViewState["SortDirectionSearchResults"] != null)
                lastDirection = ViewState["SortDirectionSearchResults"].ToString();
            string newDirection = string.Empty;
            if (e.SortExpression == lastExpression)
            {
                e.SortDirection = (lastDirection == "asc") ? System.Web.UI.WebControls.SortDirection.Descending : System.Web.UI.WebControls.SortDirection.Ascending;
            }
            newDirection = (e.SortDirection == System.Web.UI.WebControls.SortDirection.Descending) ? "desc" : "asc";
            ViewState["SortExpressionSearchResults"] = e.SortExpression;
            ViewState["SortDirectionSearchResults"] = newDirection;
            BindImportUsersSearchResultsGridView();
        }


        void UserProfilesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "UserProfilesGridView_PageIndexChanging invoked");
            UserProfilesGridView.PageIndex = e.NewPageIndex;
            UPSBrowserLogger.LogDebug(loggingCategory, $"e.NewPageIndex: {e.NewPageIndex}");
            BindUserProfilesGridView();
        }


        void UserProfilesGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "UserProfilesGridView_RowDataBound invoked");

            // If it is not a DataRow then return.
            if (e.Row.RowType != DataControlRowType.DataRow)
            {
                return;
            }

            DataRowView dataView = (DataRowView)e.Row.DataItem; 
            string userGuid = dataView["UserGuid"].ToString();
            UPSBrowserLogger.LogDebug(loggingCategory, $"userGuid: {userGuid}");

            TableCell hyperLinkCell = e.Row.Cells[0];
            HyperLink hyperLink = hyperLinkCell.Controls[0] as HyperLink;
            hyperLink.NavigateUrl = $"javascript:upsbrowser.openUPSUserEditForm('{userGuid}')";
        }


        void ImportUsersSearchResultsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "UserProfilesGridView_RowDataBound invoked");

            // If it is not DataRow then return.
            if (e.Row.RowType != DataControlRowType.DataRow)
            {
                return;
            }

            DataRowView dataView = (DataRowView)e.Row.DataItem;
            string userEmail = dataView["WorkEmail"].ToString();
            UPSBrowserLogger.LogDebug(loggingCategory, $"userEmail: {userEmail}");

            TableCell hyperLinkCell = e.Row.Cells[0];
            HyperLink hyperLink = hyperLinkCell.Controls[0] as HyperLink;
            hyperLink.NavigateUrl = $"javascript:upsbrowser.addExternalUserToResolvedList('{userEmail}')";
        }

        public DataTable GetFilteredUserProfiles()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "GetFilteredUserProfiles invoked");
            string filter = UserFilterTextBox.Text;
            List<User> upsUsers = upsUsersDAL.getUsersBySearchString(filter);

            if (upsUsers == null)
            {
                return null;
            };
            
            DataTable dt = new DataTable();
            dt.Columns.Add("UserGuid");
            dt.Columns.Add("AccountName");
            dt.Columns.Add("DisplayName");
            dt.Columns.Add("WorkEmail");
            dt.Columns.Add("JobTitle");
            dt.Columns.Add("Department");

            upsUsers.ForEach( (upsUser) =>  {
                DataRow dr = dt.NewRow();
                dr["UserGuid"] = upsUser.UserGuid;
                dr["AccountName"] = upsUser.AccountName;
                dr["DisplayName"] = upsUser.DisplayName;
                dr["WorkEmail"] = upsUser.WorkEmail;
                dr["JobTitle"] = upsUser.JobTitle;
                dr["Department"] = upsUser.Department;
                dt.Rows.Add(dr);
            });

            return dt;
        }


        public DataTable GetFilteredExternalUsers()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "GetFilteredExternalUsers invoked");

            string searchString = upsbrowser_import_users_searchtextbox.Text;
            string wsBaseUrl = UPSBrowserSettings.getStringProperty(this.settings, "wsExternalUsersSourceUrl");
            string certThumbprint = UPSBrowserSettings.getStringProperty(this.settings, "tokenSigningCertificateThumbprint");
            
            UPSBrowserLogger.LogDebug(loggingCategory, $"searchString: {searchString}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"wsBaseUrl: {wsBaseUrl}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"certThumbprint: {certThumbprint}");

            UPSBrowserLogger.LogDebug(loggingCategory, $"certs == null: {certs == null}");
            TokenSigningCertificate cert = certs.FirstOrDefault(c => c.thumbprint == certThumbprint);
            UPSBrowserLogger.LogDebug(loggingCategory, $"cert == null: {cert == null}");

            if (
                    string.IsNullOrEmpty(searchString) 
                    || 
                    searchString.Length < Constants.searchStringMingLength 
                    || 
                    string.IsNullOrEmpty(wsBaseUrl)
                    ||
                    cert == null
                )
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Invalid searchString, wsBaseUrl or cert. Returning null.");
                return null;
            }

            List<User> externalUsers = null;
            try
            {
                externalUsersSource.Init(wsBaseUrl, cert);
                externalUsers = externalUsersSource.getUsersBySearchString(searchString);
            }
            catch (Exception e)
            {
                DisplayCriticalError($"Error getting users from external source: {e.Message}", true);
                return null;
            };

            if (externalUsers == null)
            {
                return null;
            };

            DataTable dt = new DataTable();
            dt.Columns.Add("DisplayName");
            dt.Columns.Add("WorkEmail");
            dt.Columns.Add("JobTitle");
            dt.Columns.Add("Department");

            externalUsers.ForEach((externalUser) => {
                DataRow dr = dt.NewRow();
                dr["DisplayName"] = externalUser.DisplayName;
                dr["WorkEmail"] = externalUser.WorkEmail;
                dr["JobTitle"] = externalUser.JobTitle;
                dr["Department"] = externalUser.Department;
                dt.Rows.Add(dr);
            });

            return dt;
        }

        private void InitLatestActivitiesListView()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "InitLatestActivitiesListView invoked");

            Tuple<string, string> ensureListResult = ActivityLogger.EnsureActivitiesList(); //it resturns a Tuple <listGuid, viewGuid>

            if (ensureListResult == null)
            {
                string errorMessage = "ActivityLogger.EnsureActivitiesList returned null";
                UPSBrowserLogger.LogError(loggingCategory, errorMessage);
                throw new Exception(errorMessage);
            }

            string listGuid = ensureListResult.Item1;
            string viewGuid = ensureListResult.Item2;
            UPSBrowserLogger.LogDebug(loggingCategory, $"listGuid: {listGuid}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"viewGuid: {viewGuid}");

            Microsoft.SharePoint.WebPartPages.XsltListViewWebPart listViewWebPart = new Microsoft.SharePoint.WebPartPages.XsltListViewWebPart();
            listViewWebPart.ListId = new Guid(listGuid);

            listViewWebPart.Toolbar = "";

            string xmlDefinition = $@"
                <View Name=""{{{viewGuid}}}"" MobileView=""TRUE"" Type=""HTML"" Hidden=""TRUE"" DisplayName="""" Level=""1"" BaseViewID=""1"" ContentTypeID=""0x"" ImageUrl=""/_layouts/15/images/generic.png?rev=23"" >
                    <Query>
                        <OrderBy>
                            <FieldRef Name=""RegisteredDate"" Ascending=""FALSE""/>
                        </OrderBy>
                        <Where>
                            <Geq><FieldRef Name=""RegisteredDate""/><Value Type=""DateTime""><Today/></Value></Geq>
                        </Where>
                    </Query>
                    <ViewFields>
                        <FieldRef Name=""RegisteredDate""/>
                        <FieldRef Name=""Initiator""/>
                        <FieldRef Name=""User""/>
                        <FieldRef Name=""Action""/>
                        <FieldRef Name=""Result""/>
                        <FieldRef Name=""AdditionalInfo""/>
                    </ViewFields>
                    <RowLimit Paged=""TRUE"">30</RowLimit>
                    <Aggregations Value=""Off""/>
                    <JSLink>clienttemplates.js</JSLink>
                    <XslLink Default=""TRUE"">main.xsl</XslLink>
                    <Toolbar Type=""None""/>
                </View>
            ";

            listViewWebPart.XmlDefinition = xmlDefinition;

            listViewWebPart.AllowClose = false;
            listViewWebPart.AllowConnect = false;
            listViewWebPart.AllowEdit = false;
            listViewWebPart.AllowHide = false;
            listViewWebPart.AllowMinimize = false;
            listViewWebPart.AllowZoneChange = false;
            listViewWebPart.ChromeType = PartChromeType.None;
            PanelLatestActivities.Controls.Add(listViewWebPart);
        }


        private void UserFilterStartSearchButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "UserFilterStartSearchButton_Click invoked");
            BindUserProfilesGridView();
        }

        private void MainViewTabButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "MainViewTabButton_Click invoked");
            MainViewTabButton.CssClass = "kcell-upsbrowser-tabbutton--clicked";
            ImportUsersTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            SettingsTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            MultiViewContainer.ActiveViewIndex = 0;
        }


        private void ImportUsersTabButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ImportUsersTabButton_Click invoked");

            bool validSettings = ValidateSettings();
            if (!validSettings)
            {
                
                string message = (userAccessLevel == UserAccessLevels.Admin) ?
                    "Please set all required parameters on the Settings tab and reload the page!"
                    :
                    "Use farm administrator account to set all required parameters on the Settings tab and reload the page!";

                DisplayCriticalError(message, true);
                return;
            }


            MainViewTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            ImportUsersTabButton.CssClass = "kcell-upsbrowser-tabbutton--clicked";
            SettingsTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            MultiViewContainer.ActiveViewIndex = 1;
        }

        private void SettingsTabButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "SettingsTabButton_Click invoked");
            MainViewTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            ImportUsersTabButton.CssClass = "kcell-upsbrowser-tabbutton";
            SettingsTabButton.CssClass = "kcell-upsbrowser-tabbutton--clicked";
            MultiViewContainer.ActiveViewIndex = 2;
        }

        private void ImportUsersSearchButton_Click(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ImportUsersSearchButton_Click invoked");
            string searchText = upsbrowser_import_users_searchtextbox.Text;
            UPSBrowserLogger.LogDebug(loggingCategory, $"searchText: {searchText}");

            BindImportUsersSearchResultsGridView();
        }

        private void ImportUsersStartImportButton_Click(object sender, EventArgs evt)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "ImportUsersStartImportButton_Click invoked");

            string resolvedUsersEmails = upsbrowser_import_users_resolved_hiddeninput.Text;
            List<string> emails = new List<string>(resolvedUsersEmails.Split(';'));
            emails = emails.Where( email => !string.IsNullOrEmpty(email)).ToList<string>(); //filter out empty emails

            string wsBaseUrl = UPSBrowserSettings.getStringProperty(this.settings, "wsExternalUsersSourceUrl");
            string certThumbprint = UPSBrowserSettings.getStringProperty(this.settings, "tokenSigningCertificateThumbprint");
            string identityProviderName = UPSBrowserSettings.getStringProperty(this.settings, "identityProviderName");
            TokenSigningCertificate cert = certs.FirstOrDefault(c => c.thumbprint == certThumbprint);

            List<User> users = null;
            try
            { 
                externalUsersSource.Init(wsBaseUrl, cert);
                users = externalUsersSource.getUsersByEmails(emails);
            }
            catch (Exception e)
            {
                DisplayCriticalError($"Error getting users from external source: {e.Message}", true);
                return;
            };

            
            if ((users!=null) && (users.Count > 0))
            {
                foreach (User user in users)
                {
                    User createdUser = upsUsersDAL.createUser(user, identityProviderName);
                    if (createdUser != null)
                    {
                        string hiddenInputValue = upsbrowser_import_users_resolved_hiddeninput.Text.ToLower();
                        hiddenInputValue = hiddenInputValue.Replace(createdUser.WorkEmail.ToLower() + ";", "");
                        upsbrowser_import_users_resolved_hiddeninput.Text = hiddenInputValue;
                    }
                };
            };
        }

        private bool InitSettings()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "InitSettings invoked");

            // get the list of certificates installed on SharePoint server to select one of them for token signing
            certs = certsHelper.getTokenSigningCertificates();

            if (userAccessLevel != UserAccessLevels.Admin)
            {
                SettingsTabButton.Visible = false;
                return true;
            }

            List<IdentityProvider> identityProviders = identityProvidersHelper.getIdentityProviders();
            if (identityProviders == null || identityProviders.Count == 0)
            {
                UPSBrowserLogger.LogError(loggingCategory, "Cannot get the list of identity providers");
                return false;
            }

            if (!IsPostBack)
            {
                IdentityProvidersDropDownList.Items.Add(new ListItem("Select Identity Provider", ""));
                foreach (IdentityProvider identityProvider in identityProviders)
                {
                    IdentityProvidersDropDownList.Items.Add(new ListItem(identityProvider.DisplayName, identityProvider.Name));
                };

                string identityProviderName;
                try
                {
                    identityProviderName = this.identityProviderName;
                }
                catch
                {
                    identityProviderName = "";
                };

                ListItem listItem = IdentityProvidersDropDownList.Items.FindByValue(identityProviderName);
                if (listItem != null)
                {
                    IdentityProvidersDropDownList.SelectedValue = listItem.Value;
                } else
                {
                    IdentityProvidersDropDownList.SelectedValue = "";
                };
            };

            certs = certsHelper.getTokenSigningCertificates();
            if (certs == null || certs.Count == 0)
            {
                UPSBrowserLogger.LogError(loggingCategory, "No suitable certificates found to sign tokens for the external web service authentication");
                return false;
            }

            if (!IsPostBack)
            {
                TokenSigningCertificatesDropDownList.Items.Add(new ListItem("Select certificate to use for token signing", ""));
                foreach (TokenSigningCertificate cert in certs)
                {
                    TokenSigningCertificatesDropDownList.Items.Add(new ListItem(cert.friendlyName, cert.thumbprint));
                };

                string certThumbprint = UPSBrowserSettings.getStringProperty(this.settings, "tokenSigningCertificateThumbprint");
                ListItem listItem = TokenSigningCertificatesDropDownList.Items.FindByValue(certThumbprint);
                if (listItem != null)
                {
                    TokenSigningCertificatesDropDownList.SelectedValue = listItem.Value;
                }
                else
                {
                    TokenSigningCertificatesDropDownList.SelectedValue = "";
                };
            };

            if (!IsPostBack)
            {
                string wsBaseUrl = UPSBrowserSettings.getStringProperty(this.settings, "wsExternalUsersSourceUrl");
                WSExternalUsersSourceURLTextBox.Text = wsBaseUrl;
            };

            return true; //Ok
        }

        void DisplayCriticalError(string errorMessage, bool showBackButton)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "DisplayCriticalError invoked");

            MainViewTabButton.Visible = false;
            ImportUsersTabButton.Visible = false;
            SettingsTabButton.Visible = false;

            CriticalErrorMessage.Text = errorMessage;
            CriticalErrorBackButton.Visible = showBackButton;
            MultiViewContainer.ActiveViewIndex = 3;
        }

        private UserAccessLevels CheckUserAccess()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "CheckUserAccess invoked");
            bool isFarmAdmin = SPFarm.Local.CurrentUserIsAdministrator(true);
            UPSBrowserLogger.LogDebug(loggingCategory, $"isFarmAdmin: {isFarmAdmin}");
            if (isFarmAdmin)
            {
                return UserAccessLevels.Admin;
            }
            else
            {
                var allowedEmails = UPSBrowserSettings.AllowedUserEmails;
                UPSBrowserLogger.LogDebug(loggingCategory, $"allowedEmails : {string.Join(",", allowedEmails)}");
                if (allowedEmails.Count > 0)
                {
                    string currentUserEmail = SPContext.Current.Web.CurrentUser.Email.ToLower();
                    UPSBrowserLogger.LogDebug(loggingCategory, $"currentUserEmail: {currentUserEmail}");
                    int matchCount = allowedEmails.Where(ae => ae.ToLower() == currentUserEmail).Count();
                    UPSBrowserLogger.LogDebug(loggingCategory, $"matchCount: {matchCount}");
                    if (matchCount > 0)
                    {
                        return UserAccessLevels.User;
                    }
                }
                return UserAccessLevels.None;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "Page_Load invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"IsPostBack: {IsPostBack}");

            userAccessLevel = CheckUserAccess();
            UPSBrowserLogger.LogDebug(loggingCategory, $"userAccessLevel: {userAccessLevel}");
            if (userAccessLevel == UserAccessLevels.None)
            {
                DisplayCriticalError("Access denied. Use farm administrator account to configure the list of allowed users using the provided UPSBrowser-AddUser.ps1 script", false);
                return;
            };

            bool result = InitSettings();
            if (!result)
            {
                DisplayCriticalError("Cannot initialize settings tab!", true);
                return;
            }

            InitLatestActivitiesListView();

            ConfigureUserProfilesGridView();
            ConfigureImportUsersSearchResultsGridView();
            if (!IsPostBack)
            {
                ConfigureUserProfilesGridViewColumns();
                ConfigureImportUsersSearchResultsGridViewColumns();

                MainViewTabButton.CssClass = "kcell-upsbrowser-tabbutton--clicked";
                MultiViewContainer.ActiveViewIndex = 0;
            };

            InitUserProfilesDatasource();
            BindUserProfilesGridView();

            InitImportUsersSearchResultsDatasource();

            UserFilterStartSearchButton.Click += UserFilterStartSearchButton_Click;
            MainViewTabButton.Click += MainViewTabButton_Click;
            ImportUsersTabButton.Click += ImportUsersTabButton_Click;
            SettingsTabButton.Click += SettingsTabButton_Click;
            upsbrowser_import_users_searchbutton.Click += ImportUsersSearchButton_Click;
            upsbrowser_import_users_startimportbutton.Click += ImportUsersStartImportButton_Click;
            SaveSettingsButton.Click += SaveSettingsButton_Click;

            UPSBrowserLogger.LogDebug(loggingCategory, $"identityProviderName: {identityProviderName}");

            if (!string.IsNullOrEmpty(identityProviderName))
            {
                AddUserProfileButton.OnClientClick = $"upsbrowser.openUPSUserEditForm('','{identityProviderName}');return false;";
                AddUserProfileButton.Enabled = true;
            } else
            {
                AddUserProfileButton.Enabled = false;
            };
            
        }

    }
}

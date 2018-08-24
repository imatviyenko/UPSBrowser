<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upsbrowser.aspx.cs" Inherits="Kcell.UPSBrowser.upsbrowser" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink Name="MicrosoftAjax.js" runat="server" Defer="False" Localizable="false"/>
    <SharePoint:ScriptLink ID="ScriptLink1" Name="init.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink2" Name="sp.init.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink3" Name="sp.runtime.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink4" Name="sp.core.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink5" Name="sp.js" runat="server" OnDemand="false" LoadAfterUI="true" Defer="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink7" Name="sp.ui.dialog.js" runat="server" OnDemand="false" LoadAfterUI="true" Defer="true" Localizable="false" />

    <script type="text/javascript" src="js/upsbrowser.v1.js"> </script>
    <SharePoint:CssRegistration ID="upsbrowser_css" Name="/_layouts/15/upsbrowser/css/upsbrowser.v1.css" After="corev15.css" runat="server" />

</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
   


    <table class="kcell-upsbrowser-maintable">
        

        <tr>
        <td>

        <asp:Button
            ID="MainViewTabButton"
            runat="server" 
            Text="Main" 
            CssClass = "kcell-upsbrowser-tabbutton"
        />

        <asp:Button
            ID="ImportUsersTabButton"
            runat="server" 
            Text="Import users" 
            CssClass = "kcell-upsbrowser-tabbutton"
        />

        <asp:Button
            ID="SettingsTabButton"
            runat="server" 
            Text="Settings" 
            CssClass = "kcell-upsbrowser-tabbutton"
        />        


        <asp:Panel ID="MultiViewContainerPanel" runat="server" CssClass="kcell-upsbrowser-panel kcell-upsbrowser-panel--multiview">
        <asp:MultiView ID="MultiViewContainer" runat="server">
    
            <asp:View ID="ViewMain" runat="server">
                <h3 class="kcell-upsbrowser-panel_title">Users in User Profile Service</h3>
                
                <div>
                    <asp:Button
                        ID="AddUserProfileButton"
                        runat="server" 
                        Text="Add user profile" 
                        CssClass="kcell-upsbrowser-button"
                        AutoPostBack="False"
                        
                    />
                </div>

        
                <asp:Label ID="UserFilterLabel" runat="server" Font-Bold="true" >User filter:</asp:Label>
                <asp:TextBox 
                    ID="UserFilterTextBox" 
                    runat="server" 
                    AutoPostBack="False" 
                    Text = ""
                    CssClass= "kcell-upsbrowser-textbox"
                />
                <asp:Button
                    ID="UserFilterStartSearchButton"
                    runat="server" 
                    Text="Search" 
                    CssClass="kcell-upsbrowser-button"
                />


                <SharePoint:SPGridView 
                     runat="server" 
                     ID="UserProfilesGridView" 
                     AutoGenerateColumns="false"
                     GridLines="Horizontal"
                     HeaderStyle-Font-Bold="true"
                     AllowPaging="True" 
                     AllowSorting="True" 
                />

            </asp:View>

            <asp:View ID="ViewImportUser" runat="server">
                
                
                <table width="100%">
                    <tr>
                        <td>
                            <h3 class="kcell-upsbrowser-panel_title" style="display:inline-block;">Import users from external source</h3>
                            <asp:Button
                                ID="upsbrowser_import_users_startimportbutton"
                                runat="server" 
                                Text="Start import" 
                                CssClass="kcell-upsbrowser-button kcell-upsbrowser-button--big"
                                ClientIDMode="Static"
                                Enabled="False" 
                            />
                        </td>
                    </tr>


                    <tr>
                        <td>
                            <asp:Panel
                                runat = "server"
                                id = "upsbrowser_import_users_resolved"
                                CssClass ="kcell-upsbrowser-panel-import-users-resolved"
                                style = "margin-bottom:20px;"
                                ClientIDMode="Static"
                            />

                            <asp:TextBox
                                runat="server"
                                id="upsbrowser_import_users_resolved_hiddeninput"
                                style="display:none"
                                ClientIDMode="Static"
                            />

                            <script type="text/javascript">
                                upsbrowser.initImportUsersView();
                            </script>

                        </td>


                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox
                                runat="server"
                                id="upsbrowser_import_users_searchtextbox"
                                CssClass ="kcell-upsbrowser-textbox"
                                onchange = "javascript:upsbrowser.importUsersSearchTextBoxChanged()"
                                onkeyup = "javascript:upsbrowser.importUsersSearchTextBoxChanged()"
                                ClientIDMode="Static"
                            />

                            <asp:Button
                                ID="upsbrowser_import_users_searchbutton"
                                runat="server" 
                                Text="Search" 
                                CssClass="kcell-upsbrowser-button"
                                ClientIDMode="Static"
                                Enabled="False" 
                            />

                            <small>Please set the external web service URL on the "Settings" tab before using this feature</small>

                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:Panel ID="PanelImportUsersSearchResults" runat="server" CssClass="kcell-upsbrowser-panel kcell-upsbrowser-panel--searchresults">
                             <SharePoint:SPGridView 
                                 runat="server" 
                                 ID="ImportUsersSearchResultsGridView" 
                                 AutoGenerateColumns="false"
                                 GridLines="Horizontal"
                                 HeaderStyle-Font-Bold="true"
                                 AllowPaging="False" 
                                 AllowSorting="True" 
                            />
                        </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewSettings" runat="server">

                <div class="kcell-upsbrowser-form-container">

                    <div class="kcell-upsbrowser-form-container__form-group">
                        <div class="kcell-upsbrowser-form-container__control-label kcell-upsbrowser-form-container__control-label--wide">
                            <asp:Label ID="IdentityProvidersLabel" Text="Identity provider" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
                        </div>
                        <div class="kcell-upsbrowser-form-container__form-control"> 
                            <asp:DropDownList
                                    ID="IdentityProvidersDropDownList" 
                                    runat="server" 
                                    AutoPostBack="True" 
                                    CssClass = "kcell-upsbrowser-form-dropdown"
                            >
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="kcell-upsbrowser-form-container__form-group">
                        <div class="kcell-upsbrowser-form-container__control-label kcell-upsbrowser-form-container__control-label--wide">
                            <asp:Label ID="TokenSigningCertificatesLabel" Text="Token signing certificate for authentication to external user source web service" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
                        </div>
                        <div class="kcell-upsbrowser-form-container__form-control"> 
                            <asp:DropDownList
                                    ID="TokenSigningCertificatesDropDownList" 
                                    runat="server" 
                                    AutoPostBack="True" 
                                    CssClass = "kcell-upsbrowser-form-dropdown"
                            >
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="kcell-upsbrowser-form-container__form-group">
                        <div class="kcell-upsbrowser-form-container__control-label kcell-upsbrowser-form-container__control-label--wide">
                            <asp:Label ID="WSExternalUsersSourceURLable" Text="URL of external users source web service" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
                        </div>
                        <div class="kcell-upsbrowser-form-container__form-control"> 
                            <asp:TextBox
                                    ID="WSExternalUsersSourceURLTextBox" 
                                    runat="server" 
                                    AutoPostBack="True" 
                                    CssClass = "kcell-upsbrowser-form-textbox"
                            >
                            </asp:TextBox>
                        </div>
                    </div>


                    <div class="kcell-upsbrowser-form-container__form-group">
                        <div class="kcell-upsbrowser-form-container__control-label kcell-upsbrowser-form-container__control-label--wide">
                            <asp:Button
                                ID="SaveSettingsButton"
                                runat="server" 
                                Text="Save settings" 
                                CssClass="kcell-upsbrowser-button"
                            />                            
                        </div>
                    </div>

                    <script type="text/javascript">
                        upsbrowser.initSettingsView();
                    </script>

                </div>

            </asp:View>


            <asp:View ID="ViewCriticalError" runat="server">
                <H2>Critical error in UPSBrowser, please review the SharePoint logs for more information</H2>
                
                <div>
                    <asp:Label 
                        ID ="CriticalErrorLabel"
                        runat = "server"
                        CssClass = "kcell-upsbrowser-critical-error-message"
                        Text ="Error message: "
                    />
                </div>
                <div>
                    <asp:Label 
                        ID ="CriticalErrorMessage"
                        runat = "server"
                        CssClass = "kcell-upsbrowser-critical-error-message"
                        Text =""
                    />
                </div>

                <asp:Button
                    ID="CriticalErrorBackButton"
                    runat="server" 
                    Text="Back to the start page" 
                    CssClass="kcell-upsbrowser-button"
                    OnClientClick="javascript:window.location.href = window.location.href;return false;"
                />   
            </asp:View>

    </asp:MultiView>
    </asp:Panel>

    <asp:Panel ID="PanelLatestActivities" runat="server" CssClass="kcell-upsbrowser-panel kcell-upsbrowser-panel--activities">
        <h3 class="kcell-upsbrowser-panel_title">Latest activities</h3>
        
    </asp:Panel>

    </td>
    </tr>

    </table>


</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
UPSBrowser
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
UPSBrowser
</asp:Content>

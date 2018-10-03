<%@ Assembly Name="Kcell.UPSBrowser, Version=1.0.0.0, Culture=neutral, PublicKeyToken=bb84c38be526530f" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upsuser.aspx.cs" Inherits="Kcell.UPSBrowser.upsuser" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink Name="MicrosoftAjax.js" runat="server" Defer="False" Localizable="false"/>
    <SharePoint:ScriptLink ID="ScriptLink1" Name="init.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink2" Name="sp.init.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink3" Name="sp.runtime.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink4" Name="sp.core.js" runat="server" OnDemand="false" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink5" Name="sp.js" runat="server" OnDemand="false" LoadAfterUI="true" Defer="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink7" Name="sp.ui.dialog.js" runat="server" OnDemand="false" LoadAfterUI="true" Defer="true" Localizable="false" />

    <script type="text/javascript" src="js/upsuser.v1.js">  </script>
    <SharePoint:CssRegistration ID="upsbrowser_css" Name="/_layouts/15/upsbrowser/css/upsbrowser.v1.css" After="corev15.css" runat="server" />

</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div class="kcell-upsbrowser-form-container">

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="WorkEmailLabel" Text="WorkEmail" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
            </div>
            <div class="kcell-upsbrowser-form-container__form-control"> 
                <asp:TextBox 
                        ID="WorkEmailTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                        ReadOnly="True"
                        Enabled ="false"
                />
            </div>
        </div>



        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="AccountNameLabel" Text="Account name" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="AccountNameTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        ReadOnly="True"
                        Enabled ="false"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="DisplayNameLabel" Text="Display name" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="DisplayNameTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="FirstNameLabel" Text="First name" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="FirstNameTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="LastNameLabel" Text="Last name" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="LastNameTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="JobTitleLabel" Text="Job title" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
            </div>
            <div class="kcell-upsbrowser-form-container__form-control"> 
                <asp:TextBox 
                        ID="JobTitleTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="DepartmentLabel" Text="Department" runat="server" CssClass = "kcell-upsbrowser-form-label"/>
            </div>
            <div class="kcell-upsbrowser-form-container__form-control"> 
                <asp:TextBox 
                        ID="DepartmentTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>

        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="WorkPhoneLabel" Text="Work phone" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="WorkPhoneTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>


        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="CellPhoneLabel" Text="Cell phone" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control">
                <asp:TextBox 
                        ID="CellPhoneTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        CssClass = "kcell-upsbrowser-form-textbox"
                        onchange = "javascript:upsuser.formFieldsChanged();"
                        onkeyup = "javascript:upsuser.formFieldsChanged();"
                />
            </div>
        </div>


        <div class="kcell-upsbrowser-form-container__form-group">
            <div class="kcell-upsbrowser-form-container__control-label">
                <asp:Label ID="UserGuidLabel" Text="User guid" runat="server" CssClass = "kcell-upsbrowser-form-label"/> 
            </div>
            <div class="kcell-upsbrowser-form-container__form-control"> 
                <asp:TextBox 
                        ID="UserGuidTextBox" 
                        runat="server" 
                        AutoPostBack="False" 
                        Text = ""
                        ReadOnly="True"
                        Enabled ="false"
                        CssClass = "kcell-upsbrowser-form-textbox"                    
                />
            </div> 
        </div>

        <div>
            <asp:Label 
                ID ="ErrorMessage"
                runat = "server"
                CssClass = "kcell-upsbrowser-critical-error-message"
                Text = ""
            />
        </div>


    </div>

    <asp:Button
        ID="upsbrowser_form_savebutton"
        runat="server" 
        Text="Save" 
        OnClientClick="_spFormOnSubmitCalled = false;" 
        ClientIDMode="Static"
        CssClass = "kcell-upsbrowser-button"
        Enabled="False" 
    />

    <asp:Button
        ID="DeleteButton"
        runat="server" 
        Text="Delete" 
        OnClientClick="_spFormOnSubmitCalled = false;" 
        CssClass = "kcell-upsbrowser-button"
    />

    <asp:Button
        ID="CloseButton"
        runat="server" 
        Text="Close" 
        CssClass = "kcell-upsbrowser-button"
        Style="position:relative; float:right; margin-right:20px;"
    />
    



</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
User Profile
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
User Profile
</asp:Content>

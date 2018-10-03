var upsbrowser = (function () {

    function initImportUsersView() {
        console.log("upsbrowser.js -> initImportUsersView invoked");

        //restore resolved users list from the values stored in the hidden input
        restoreResolvedUsers();
    }


    function initSettingsView() {
        console.log("upsbrowser.js -> initSettingsView invoked");
    }


    function dialogReturnValueCallback(dialogResult, returnValue) {
        console.log("upsbrowser.js -> dialogReturnValueCallback invoked");
        console.log("dialogResult: ", dialogResult);
        console.log("returnValue: ", returnValue);

        if (dialogResult == SP.UI.DialogResult.OK) {
            __doPostBack('', '');
        };
    }

     

    function openUPSUserEditForm(userGuid, identityProviderName) {
        console.log("upsbrowser.js -> openUPSUserEditForm invoked");
        console.log("userGuid: " + userGuid + "; identityProviderName: " + identityProviderName);
        var options = {
            title: " User Profile",
            autoSize: true,
            showClose: true,
            width: 400,
            //height: 600,
            dialogReturnValueCallback: dialogReturnValueCallback
        };

        options.url = "upsuser.aspx?idp=" + identityProviderName;

        if (userGuid && userGuid.length && userGuid.length > 0) {
            options.url = options.url + "&guid=" + userGuid;
        };

        SP.UI.ModalDialog.showModalDialog(options);
    }

    
    function addUserDivToResolvedList(userEmail) {
        console.log("upsbrowser.js -> addExternalUserToResolvedList invoked");
        console.log("userEmail: ", userEmail);

        var userEmailLowercase = userEmail.toLowerCase();

        var panelDiv = document.getElementById("upsbrowser_import_users_resolved");

        var userDiv = document.createElement('div');
        userDiv.setAttribute('class', 'kcell-upsbrowser-panel-import-users-resolved__userdiv');

        var usernameSpanTag = document.createElement('span');
        usernameSpanTag.setAttribute('class', 'kcell-upsbrowser-panel-import-users-resolved__userspan');
        usernameSpanTag.innerText = userEmailLowercase;
        userDiv.appendChild(usernameSpanTag);

        var removeATag = document.createElement('a');
        removeATag.setAttribute('href', '#');
        removeATag.setAttribute('onclick', 'javascript:upsbrowser.removeResolvedUser("' + userEmailLowercase + '", this);');
        removeATag.setAttribute('class', 'kcell-upsbrowser-panel-import-users-resolved__removeuser');
        removeATag.innerHTML = "X";
        userDiv.appendChild(removeATag);

        panelDiv.appendChild(userDiv);
    }


    function addExternalUserToResolvedList(userEmail) {
        console.log("upsbrowser.js -> addExternalUserToResolvedList invoked");
        console.log("userEmail: ", userEmail);
        var userEmailLowercase = userEmail.toLowerCase();


        var hiddenInput = document.getElementById("upsbrowser_import_users_resolved_hiddeninput");
        var hiddenInputValue = hiddenInput.value;
        if (hiddenInputValue.toLowerCase().indexOf(userEmailLowercase) >= 0) {
            console.log("email already added to the resolved list");
            return;
        }

        addUserDivToResolvedList(userEmail);

        var startImportButton = document.getElementById("upsbrowser_import_users_startimportbutton");
        startImportButton.disabled = false;

        // add email to the hidden field to persist it across postbacks
        hiddenInput.value = hiddenInput.value + userEmailLowercase + ";";
    }


    function removeResolvedUser(userEmail, removeATag) {
        console.log("upsbrowser.js -> removeResolvedUser invoked");
        console.log("userEmail: ", userEmail);
        console.log("removeATag:");
        console.log(removeATag);

        var userEmailLowercase = userEmail.toLowerCase();

        var hiddenInput = document.getElementById("upsbrowser_import_users_resolved_hiddeninput");
        console.log("hiddenInput:");
        console.log(hiddenInput);
        var hiddenInputValue = hiddenInput.value.toLowerCase();
        hiddenInput.value = hiddenInputValue.replace(userEmailLowercase + ";", "");
        console.log("hiddenInputValue: ", hiddenInputValue);

        if (hiddenInput.value.length < 2) {
            console.log("Hiding startImportButton");
            var startImportButton = document.getElementById("upsbrowser_import_users_startimportbutton");
            startImportButton.disabled = true;
        }

        var userDiv = removeATag.parentNode;
        userDiv.remove();
    }

    function restoreResolvedUsers() {
        console.log("upsbrowser.js -> restoreResolvedUsers invoked");
        var hiddenInput = document.getElementById("upsbrowser_import_users_resolved_hiddeninput");
        console.log("hiddenInput:");
        console.log(hiddenInput);
        var hiddenInputValue = hiddenInput.value;
        var parts = hiddenInputValue.split(";");
        parts.forEach(function (part) {
            console.log("upsbrowser.js -> restoreResolvedUsers -> forEach invoked");
            if (part.length && part.length > 1) {
                console.log("part: " + part);
                addUserDivToResolvedList(part.trim());
            }
        });
    }

    function importUsersSearchTextBoxChanged() {
        console.log("upsbrowser.js -> importUsersSearchTextBoxChanged invoked");
        htmlElementId = "upsbrowser_import_users_searchtextbox";
        var htmlElement = document.getElementById(htmlElementId);
        var value = htmlElement.value;
        console.log("id: %s, value: %s", htmlElementId, value);

        var searchButton = document.getElementById("upsbrowser_import_users_searchbutton");
        if (value && value.length && value.length > 2) {
            searchButton.disabled = false;
        } else {
            searchButton.disabled = true;
        };
    }

    return {
        initImportUsersView: initImportUsersView,
        initSettingsView: initSettingsView,
        dialogReturnValueCallback: dialogReturnValueCallback,
        openUPSUserEditForm: openUPSUserEditForm,
        addExternalUserToResolvedList: addExternalUserToResolvedList,
        removeResolvedUser: removeResolvedUser,
        importUsersSearchTextBoxChanged: importUsersSearchTextBoxChanged,
    };

})();

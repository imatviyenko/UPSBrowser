var upsuser = (function () {

    function init() {
        console.log("upsuser.js -> init invoked");
    }


    function formFieldsChanged() {
        console.log("upsuser.js -> formFieldsChanged invoked");

        var saveButton = document.getElementById("upsbrowser_form_savebutton");
        saveButton.disabled = false;
    }

    return {
        init,
        formFieldsChanged
    };

})();

ExecuteOrDelayUntilScriptLoaded(upsuser.init, "sp.js");


component {
    this.name = "python-debugging";
    this.sessionManagement = true;

    function onSessionStart() {
        session.loggedin = false;
    }

    function onRequestStart() {
        // mock stage gate
        cookie name="stageauth" value="letmein";

        // access check
        if(!session.loggedin and cgi.script_name neq "/index.cfm")
            location url="/" addtoken="false";

        // auth
        if(IsDefined("form.user") and form.user eq "Alice"
		        and IsDefined("form.pass") and form.pass eq "12345") {
            session.loggedin = true;
        }
    }
}
<cfif session.loggedin>
	<cflocation url="form.cfm" addtoken="false">
</cfif>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
	<style>
	label {display:block;}
	</style>
</head>
<body>
	<form action="index.cfm" method="post">
		<label>user <input name="user" value="Alice"></label>
		<label>pass <input name="pass" value="12345"></label>

		<input type="submit">
	</form>
</body>
</html>
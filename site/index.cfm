<!--- set stage cookie --->
<cfcookie name="stageauth" value="letmein">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Valid HTML5 Document!</title>
	<style>
	label {display:block;}
	</style>
</head>
<body>
	<form action="process.cfm" method="post" enctype="multipart/form-data">
		<label>title <input name="title"></label>
		<label>category
			<select name="category">
				<option value="1">general</option>
				<option value="2">custom</option>
			</select>
		</label>
		<label>file <input type="file" name="file"></label>
		<label>keywords <input name="keywords"></label>
		<label>copyright <input name="copyright"></label>
		<label>author <input name="author"></label>

		<input type="submit">
	</form>
</body>
</html>
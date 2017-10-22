<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload</title>
	<style>
	label {display:block;}
	</style>
</head>
<body>
	<form action="process.cfm" method="post" enctype="multipart/form-data">
		<label>title <input name="title" value="Test File"></label>
		<label>category
			<select name="category">
				<option value="1" selected>general</option>
				<option value="2">custom</option>
			</select>
		</label>
		<label>file <input type="file" name="file"></label>
		<label>keywords <input name="keywords" value="kw1,kw2"></label>
		<label>copyright <input name="copyright" value="1999"></label>
		<label>author <input name="author" value="Robert"></label>

		<input type="submit">
	</form>
</body>
</html>
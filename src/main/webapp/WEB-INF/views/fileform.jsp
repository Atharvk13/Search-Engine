<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>File Upload</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f7f8;
	margin: 0;
	padding: 20px;
}

.container {
	max-width: 800px;
	margin: auto;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
}

fieldset {
	border: none;
	margin-bottom: 20px;
}

legend {
	font-weight: bold;
	margin-bottom: 10px;
}

label {
	display: block;
	margin-top: 10px;
}

input, select, textarea {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

.row {
	display: flex;
	gap: 10px;
}

.row div {
	flex: 1;
}

.checkbox-group, .radio-group {
	display: flex;
	gap: 15px;
	margin-top: 5px;
}

button {
	width: 100%;
	padding: 10px;
	background: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background: #0056b3;
}
</style>
</head>
<body>

	<div class="container">
		<h2>File Upload</h2>

		<form action="uploadimage" method="POST" enctype="multipart/form-data">
			<label for="myfile">Select a file:</label> <input type="file"
				id="myfile" name="myfile">
				<button type="submit">Upload</button>
		</form>
	</div>

</body>
</html>
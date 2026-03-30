<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Advanced Registration Form</title>
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
		<h2>User Registration Form</h2>

		<form action="ghar" method="POST">

			<!-- Personal Info -->
			<fieldset>
				<legend>Personal Information</legend>

				<div class="row">
					<div>
						<label>Name</label> <input type="text" name="name" required>
					</div>
				</div>

				<label>Email</label> <input type="email" name="email" required>

				<label>Password</label> <input type="password" name="password"
					minlength="8"> <label>Phone Number</label> <input
					type="tel" pattern="[0-9]{10}" placeholder="10-digit number">


				<label>Gender</label>
				<div class="radio-group">
					<label><input type="radio" name="gender" value="male">
						Male</label> <label><input type="radio" name="gender"
						value="female"> Female</label> <label><input type="radio"
						name="gender" value="other"> Other</label>
				</div>
			</fieldset>
			<!-- Professional Info -->
			<fieldset>
				<legend>Professional Information</legend>


				<div class="checkbox-group">
    <label>
        <input type="checkbox" name="skills" value="Java"> Java
    </label>

    <label>
        <input type="checkbox" name="skills" value="Python"> Python
    </label>

    <label>
        <input type="checkbox" name="skills" value="JavaScript"> JavaScript
    </label>

    <label>
        <input type="checkbox" name="skills" value="SQL"> SQL
    </label>
</div>
				
			</fieldset>


			<button type="submit">Register</button>

		</form>
	</div>

</body>
</html>
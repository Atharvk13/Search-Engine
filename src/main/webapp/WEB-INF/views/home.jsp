
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Engine</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, #667eea, #764ba2);
            font-family: Arial, sans-serif;
        }

        .container {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            width: 300px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            font-size: 14px;
        }

        input[type="text"]:focus {
            border-color: #667eea;
        }

        button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background-color: #667eea;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #5a67d8;
        }
    </style>
</head>

<body>

    <div class="container">
        <form action="search">
            <h2>Search Engine</h2>
            <input type="text" name="search" placeholder="Enter your query here!!">
            <button type="submit">Submit</button>
        </form>
    </div>

</body>

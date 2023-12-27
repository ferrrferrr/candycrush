<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Login Page</title> 
        <style> 
            body { 
                font-family: Arial, sans-serif; 
                background-color: #f4f4f4; 
                margin: 0; 
                padding: 0; 
                display: flex; 
                align-items: center; 
                justify-content: center; 
                height: 100vh; 
            } 
 
            h1 { 
                text-align: center; 
            } 
 
            form { 
                background-color: #fff; 
                padding: 20px; 
                border-radius: 5px; 
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            } 
 
            label { 
                display: block; 
                margin-bottom: 8px; 
            } 
 
            input { 
                width: 100%; 
                padding: 8px; 
                margin-bottom: 16px; 
                box-sizing: border-box; 
            } 
 
            input[type="submit"] { 
                background-color: #4caf50; 
                color: #fff; 
                cursor: pointer; 
            } 
 
            input[type="submit"]:hover { 
                background-color: #45a049; 
            } 
 
            p { 
                text-align: center; 
                margin-top: 20px; 
            } 
 
            a { 
                color: #3498db; 
                text-decoration: none; 
            } 
 
            a:hover { 
                text-decoration: underline; 
            } 
        </style> 
    </head> 
    <body> 
        <form method="POST" action="j_security_check"> 
            <label>Username :</label> 
            <input type="text" placeholder="Please Insert Username" name="j_username"> 
 
            <label>Password :</label> 
            <input type="password" placeholder="Please Insert Password" name="j_password"> 
             
            <input type="submit" value="Login"> 
        </form> 
 
    </body> 
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
    <title>Malaysian Red Crescent</title> 
    <style> 
        body { 
            font-family: Arial, sans-serif; 
            background-color: #f2f2f2; 
            margin: 0; 
            padding: 0; 
        } 
        .container { 
            text-align: center; 
            margin: 20px auto; 
        } 
        .header { 
            font-size: 24px; 
            font-weight: bold; 
        } 
        .image-container { 
            display: flex; 
            justify-content: center; 
        } 
        .image-link { 
            display: inline-block; 
            margin: 20px; 
            text-decoration: none; 
            text-align: center; 
        } 
        .image-link img { 
            max-width: 200px; 
            border: 1px solid #ddd; 
            border-radius: 5px; 
        } 
        .label { 
            margin-top: 10px; 
            font-weight: bold; 
        } 
    </style> 
</head> 
<body> 
    <div class="container"> 
        <div class="header">MALAYSIAN RED CRESCENT MANAGEMENT SYSTEM (MRCMS)</div> 
        <div class="image-container"> 
            <a class="image-link" href="userRegisterForm.jsp"> 
                <img src="user_reg_ic.png" alt=""/>
                <div class="label">Register Form</div> 
            </a> 
            <a class="image-link" href="userView.jsp"> 
                <img src="user_view_ic.png" alt=""/>
                <div class="label">Status</div> 
            </a> 
        </div> 
    </div> 
            <center> 
        <a href="index.jsp">ENTER AS ADMIN</a> 
     </center> 
</body> 
</html>
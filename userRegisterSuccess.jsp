<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <script type="text/javascript"> 
            function alertsuccess(){ 
                alert("User Data has been registered successfully"); 
            } 
            </script> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> 
    </head> 
    <body> 
        <jsp:include page="userRegisterForm.jsp"></jsp:include> 
        <script type="text/javascript"> 
            window.onload=alertsuccess; 
            </script> 
    </body> 
</html>
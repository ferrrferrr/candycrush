<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User View</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            center {
                margin-top: 50px;
            }

            h1 {
                color: #333;
            }

            table {
                width: 80%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #4caf50;
                color: white;
            }

            tr:hover {
                background-color: #f5f5f5;
            }

            a {
                text-decoration: none;
                color: #333;
            }

            button {
                background-color: #008CBA;
                color: #fff;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            button:hover {
                background-color: #00537a;
            }
        </style>
    </head>
    <body>
        <a href="mainPage.jsp"><button>Back</button></a>
        <center>
            <h1>User Application Status</h1>
            <table border="1">
                <tr>
                    <th>User Full Name</th>
                    <th>User Address</th>
                    <th>User Identification No.</th>
                    <th>User Phone No.</th>
                    <th>Guardian Full Name</th>
                    <th>Guardian Relation</th>
                    <th>Guardian Address</th>
                    <th>Guardian Phone No.</th>
                    <th>Status</th>
                </tr>
                <%
                try{
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project","root","");
                    statement = connection.createStatement();
                    String DisplayQuery = "SELECT * FROM user_information";
                    resultSet = statement.executeQuery(DisplayQuery);
                    while(resultSet.next()){
                    %>
                    <tr>
                        <td><%=resultSet.getString("user_fullname")%></td>
                        <td><%=resultSet.getString("user_address")%></td>
                        <td><%=resultSet.getString("user_ic")%></td>
                        <td><%=resultSet.getString("user_phone_no")%></td>
                        <td><%=resultSet.getString("guardian_fullname")%></td>
                        <td><%=resultSet.getString("guardian_relation")%></td>
                        <td><%=resultSet.getString("guardian_address")%></td>    
                        <td><%=resultSet.getString("guardian_phone_no")%></td>    
                        <td><%=resultSet.getString("status")%></td>    
                    </tr>
                    <%
                    }
                } catch(Exception e){
                    //display alert error
                    out.println(e);
                }
                %>
            </table>
        </center>
    </body>
</html>

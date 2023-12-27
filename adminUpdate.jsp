<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%
    try{
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String id = request.getParameter("id");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project","root","");
        statement = connection.createStatement();
        String UpdateQuery = "SELECT * FROM user_information WHERE id=" +id;
        resultSet = statement.executeQuery(UpdateQuery);
        while(resultSet.next()){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Data</title>
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

        button {
            background-color: #008CBA;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        button:hover {
            background-color: #00537a;
        }

        h1 {
            color: #333;
        }

        h2 {
            color: #333;
            margin-top: 20px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        td {
            padding: 8px;
        }

        select, input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 8px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <a href="admin.jsp"><button>Back</button></a>
    <center>
        <h1>Updating User Credit Card Applications</h1>
        <form action="adminUpdateProcess.jsp" method="post">
            <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
            <h2>User Personal Information</h2>
            <table>
                <tr>
                    <td>User Full Name </td>
                    <td>:</td>
                    <td><%=resultSet.getString("user_fullname")%></td>
                </tr>
                <tr>
                    <td>User Address </td>
                    <td>:</td>
                    <td><%=resultSet.getString("user_address")%></td>
                </tr>
                <tr>
                    <td>User Identification No. </td>
                    <td>:</td>
                    <td><%=resultSet.getString("user_ic")%></td>
                </tr>
                <tr>
                    <td>User Phone No. </td>
                    <td>:</td>
                    <td><%=resultSet.getString("user_phone_no")%></td>
                </tr>
            </table>
            <br>
            <h2>User Guardian Information</h2>
            <table>
                <tr>
                    <td>Guardian Full Name </td>
                    <td>:</td>
                    <td><%=resultSet.getString("guardian_fullname")%></td>
                </tr>
                <tr>
                    <td>Guardian Relation </td>
                    <td>:</td>
                    <td><%=resultSet.getString("guardian_relation")%></td>
                </tr>
                <tr>
                    <td>Guardian Address </td>
                    <td>:</td>
                    <td><%=resultSet.getString("guardian_address")%></td>
                </tr>
                <tr>
                    <td>Guardian Phone No. </td>
                    <td>:</td>
                    <td><%=resultSet.getString("guardian_phone_no")%></td>
                </tr>
                <tr>
                    <td>Status</td>                            
                    <td>:</td>
                    <td>
                        <select name="status">
                            <option value="Approved">Approve</option>
                            <option value="Declined">Decline</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input type="submit" value="Update">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
<%
        }
    }catch(Exception e){
        out.println(e);
    }
%>

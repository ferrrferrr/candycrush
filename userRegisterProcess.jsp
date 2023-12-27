<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String userFullname = request.getParameter("userFullname");
    String userAddress = request.getParameter("userAddress");
    String userIC = request.getParameter("userIC");
    String userPhoneNo = request.getParameter("userPhoneNo");
    String guardianFName = request.getParameter("guardianFName");
    String guardianRelation = request.getParameter("guardianRelation");
    String guardianAddress = request.getParameter("guardianAddress");
    String guardianPhoneNo = request.getParameter("guardianPhoneNo");
    String status = "In Progress";
    
    String InsertQuery = "INSERT INTO user_information(user_fullname,user_address,user_ic,user_phone_no,"
            + "guardian_fullname,guardian_relation,guardian_address,guardian_phone_no,status)"
            + "VALUES('"+userFullname+"','"+userAddress+"','"+userIC+"','"+userPhoneNo+"',"
            + "'"+guardianFName+"','"+guardianRelation+"','"+guardianAddress+"','"+guardianPhoneNo+"','"+status+"')";
            
    try{
        Connection connection = null;
        Statement statement = null;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project","root","");
        statement = connection.createStatement();
        statement.executeUpdate(InsertQuery);
    //display success message
    response.sendRedirect("userRegisterSuccess.jsp");
    }catch (Exception e){    
        out.println(e);
}%>
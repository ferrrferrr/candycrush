<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    try{
        String id = request.getParameter("id");
        String status = request.getParameter("status");
        Connection connection = null;
        PreparedStatement ps = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project","root","");
        
        String sql ="UPDATE user_information set status=? WHERE id="+id;
        ps = connection.prepareStatement(sql);
        ps.setString(1,status);
        
        int i = ps.executeUpdate();
        
        if(i > 0){
            response.sendRedirect("adminUpdateSuccess.jsp");
        }else{
        
        }
        
    }catch(Exception e){
    out.println(e);
    }
%>
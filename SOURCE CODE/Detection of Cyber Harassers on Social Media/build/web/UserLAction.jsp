<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    
    String query="select * from register where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
     

       session.setAttribute("id",i.getString("id"));
       session.setAttribute("username",i.getString("username"));
        session.setAttribute("email",i.getString("email"));
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="UserHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="User.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="db.dbconnection" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: WALEED TRADERS
  Date: 3/27/2020
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display jsp</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("user");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String dob = request.getParameter("DOB");
    String phone = request.getParameter("phone");
    String fee = request.getParameter("fee");
    String course = request.getParameter("JAVA") + " " +request.getParameter("JDBC")  + " " +request.getParameter("JSP")  + " " +request.getParameter("EJB");
    String gender = request.getParameter("gender");

dbconnection db = new dbconnection();

db.insertRecord(name,password,email,dob,phone,fee,course,gender);
    ResultSet rs = db.getRecords();
%>






<div class="table-responsive">
    <table  class="table">
        <tr>
            <td>Student id  :</td>
            <td> user Name :</td>
            <td> password:</td>
            <td> email :</td>
            <td> DOB :</td>
            <td> Phone :</td>
            <td> fee :</td>
            <td> Course :</td>
            <td> Gender :</td>

        </tr>
        <tr>
          <% while(rs.next())
          {
          %>
            <td> <%= rs.getInt("id")%>  <br><br></td>

            <td> <%=rs.getString("name") %>  <br><br></td>

            <td> <%= rs.getString("password") %>  <br><br></td>

            <td> <%=rs.getString("email")  %>  <br><br></td>

            <td><%=rs.getString("dob")  %>   <br><br></td>

            <td> <%=rs.getString("phone")  %>  <br><br></td>

            <td><%= rs.getString("fee") %>   <br><br></td>

            <td> <%= rs.getString("course") %>  <br><br></td>
            <td> <%= rs.getString("gender") %>  <br><br></td>

        </tr>

        <% }%>
    </table>
</div>


</body>
</html>

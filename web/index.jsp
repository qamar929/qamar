<%--
  Created by IntelliJ IDEA.
  User: WALEED TRADERS
  Date: 3/27/2020
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lab 05 JSP</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<form action="display.jsp" >

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Create Your Account </a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="container" >
    <div class="col-6">

      <div class="form-group">
      <label >Student id</label>
      <input name="id" type="name" class="form-control" id="id" >
      </div>


      <div class="form-group">
        <label >User Name</label>
        <input name="user" type="text" class="form-control" id="user" >
      </div>


      <div class="form-group">
        <label >password</label>
        <input name="password" type="password" class="form-control" id="password" >
      </div>




      <div class="form-group">
        <label for="exampleInputEmail1">Enter Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email">
      </div>


      <div class="form-group">
        <label >DOB</label>
        <input name="DOB" type="datetime-local" class="form-control"  >
      </div>

      <div class="form-group">
        <label >Phone</label>
        <input name="phone" type="text" class="form-control"  >
      </div>
      <div class="form-group">
        <label >Fee</label>
        <input name="fee" type="text" class="form-control"  >
      </div>


  <input type="checkbox" id="vehicle1" name="JAVA" value="JAVA">
  <label for="vehicle1"> JAVA</label><br>
  <input type="checkbox" id="vehicle2" name="JDBC" value="JDBC">
  <label for="vehicle2"> JDBC</label><br>
  <input type="checkbox" id="vehicle3" name="EJB" value="EJB">
  <label for="vehicle3"> EJB</label><br>

  <input type="checkbox" id="vehicle4" name="JSP" value="JSP">
  <label for="vehicle4"> JSP</label><br>



      <label >Select Gender</label>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" value="male" class="form-check-input" name="gender">Male
        </label>
      </div>
      <div class="form-check">
        <label  class="form-check-label">
          <input type="radio" value="female" class="form-check-input" name="gender">Female
        </label>
      </div>

    </div>
    <button type="submit" class="btn btn-success" name="btn">Create Account</button>
  </div>

</form>

</body>
</html>

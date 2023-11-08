<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
    <style>
    body{
    	background: #393a3d;
    	padding-top: 20vh;
    }
    form{
        background: #fff;
    }
    .form-container{
        border-radius: 20px;
        padding: 40px;
    }

    </style>
   </head>
  <body>

<section class="container-fluid">
  <section class="row justify-content-center">
    <section class="col-12 col-sm-6 col-md-4">
        <form class="form-container" action="home" method="POST">
        <div class="form-group">
          <h4 class="text-center font-weight-bold"> Login </h4>
          <label>Email</label>
           <input type="text" class="form-control" placeholder="Enter Email">
        </div>

        <div class="form-group pb-2">
          <label>Password</label>
          <input type="password" class="form-control"  placeholder="Password">
        </div>
        <button type="Sign in" class="btn btn-primary btn-block ">Sign in</button>
        <div class="form-footer">
          <p> Don't have an account? <a href="register">Sign Up</a></p>
        </div>
        </form>
      </section>
    </section>
  </section>

</body>
</html>

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
          <form class="form-container" action="registers" method="post">
           <div class="form-group">
                <h4 class="text-center font-weight-bold"> Register </h4>
                <label>User Name</label>
                <input type="text" name="username" class="form-control" placeholder="Enter UserName">
           </div>
           <div class="form-group pb-2">
                <label>Email</label>
                <input type="text" name="email" class="form-control"  placeholder="Enter Email">
           </div>
           <div class="form-group pb-2">
                <label>Password</label>
                <input type="password" name="password" class="form-control"  placeholder="Password">
           </div>
           <div class="form-group pb-2">
                <label>Confirm Password</label>
                <input type="password" name="password" class="form-control"  placeholder="Confirm Password">
           </div>
           <div class="d-flex flex-row">
               <label>Female</label>
               <input type="radio" name="gender" class="form-check pb-2"  value="Female"/>
               <label>Male</label>
               <input type="radio" name="gender" class="form-check pb-2" value="Male"/>
           </div>
           <div class="form-group pb-2">
                <label>Country</label>
                <select name="country" class="form-control">
                        <option value="Select" label="Select" />
                        <option value="India" label="India" />
                        <option value="USA" label="USA" />
                        <option value="China" label="China" />
                <select>
           </div>
           <div class="d-flex flex-row">
                 <label class="pe-3">Skills:</label>
                  <input type="checkbox" class="form-check" name="skill" value="Java"/>Java
                  <input type="checkbox" class="form-check" name="skill" value="Python"/>Python
                  <input type="checkbox" class="form-check" name="skill" value="MYSQL"/>MYSQL
                  <input type="checkbox"class="form-check" name="skill" value="Others"/>Others
           </div>
                 <button type="submit" value="register" class="btn btn-primary btn-block ">Sign up</button>
           <div class="form-footer">
                <p> have an account? <a href="index">Sign in</a></p>
           </div>
      </form>
    </section>
  </section>
</section>
</body>
</html>
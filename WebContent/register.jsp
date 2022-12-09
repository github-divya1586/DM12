<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
     <link href="css/style.min.css" rel="stylesheet">
     <link>
</head>

<body>
<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
             ${alert}
              ${info}
                <center><h3 class="mb-5 text-uppercase"> Registration </h3></center>
  <form action="Register" method="post">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-outline mb-4">
                      <input type="text" id="form3Example1m" class="form-control form-control-lg"  name="uname"/>
                      <label class="form-label" for="form3Example1m">Hospital Name</label>
                    </div>
                  </div>
                  
                </div>

               

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="address" />
                  <label class="form-label" for="form3Example8">Hospital Address</label>
                </div>

               
                 <div class="form-outline mb-4">
                 <input type="text" id="form3Example97" class="form-control form-control-lg" name="emailid" />
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div>
                 <div class="form-outline mb-4">
                 <input type="password" id="form3Example97" class="form-control form-control-lg"  name="password"/>
                  <label class="form-label" for="form3Example97">Password</label>
                </div>
                

                <div class="d-flex justify-content-end pt-3">
                 
                  <input type="submit" class="btn btn-warning btn-lg ms-2" value="Register">
                </div>
</form>
          <a href="login.jsp">LOGIN</a>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
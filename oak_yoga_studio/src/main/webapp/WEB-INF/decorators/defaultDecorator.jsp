<%-- 
    Document   : defaaultDecorator
    Created on : Oct 19, 2014, 6:47:43 AM
    Author     : Somayeh
--%>
<%@taglib  prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   

    <title>Oak Yoga Studio </title>

    <!-- Bootstrap Core CSS -->
    <link href="/oak_yoga_studio/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/oak_yoga_studio/resources/bootstrap/css/business-casual.css" rel="stylesheet">
    <link href="/oak_yoga_studio/resources/bootstrap/css/styles2" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="/oak_yoga_studio/resources/bootstrap/js/script2.js"></script>
</head>

<body>

    <div class="brand">Oak Yoga Studio</div>
    <div class="address-bar">MUM 1000 N 4th street, Fairfield, IA 52557 | 641.641.641</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="oak_yoga_studio/home">Oak Yoga Studio</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/oak_yoga_studio/index">Home</a>
                    </li>
                    <li>
                        <a href="/oak_yoga_studio/viewCourses">Courses</a>
                    </li>
                    <li>
                    <li>
                        <a href="/oak_yoga_studio/products">Products</a>
                    </li>
                    <li>
                        <a href="/oak_yoga_studio/about">About</a>
                    </li>
                    <li>
                        <a href="/oak_yoga_studio/contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <div id="section-navigation">
        <div id='cssmenu'>
            <ul> 
                
                <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <li><a href="addCredential" >Sign Up</a></li>
                        <li><a href="login" >Login</a></li>
                        
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_CUSTOMER')">
                        <li><a href="viewProfile" >Profile</a></li>
                        <li><a href="ViewAllCourses" >Enrolling Course</a></li>
                        <li><a href="waiverRequest" >Course Waiving Request</a></li>
                        <li><a href="enrollInCourse" >Enrollment History</a></li>
                        <li><a href="searchProduct" >Search Product</a></li>
                        <li><a href="shoppingCart" >Shopping Cart</a></li>
                        <li><a href="logout" >Logout</a></li>
                </sec:authorize>
                
                
                <sec:authorize access="hasRole('ROLE_ADMIN')" >
                         
                          <li><a href="ViewAllCourses"> Manage Courses</a></li>
                          <li><a href="ViewSections">Manage Section</a></li>
                          <li><a href="viewFaculties">Manage Faculties</a></li>
                          <li><a href="productList">Manage Products</a></li>
                          <li><a href="logout" >Logout</a></li>
                </sec:authorize>
                          
                <sec:authorize access="hasRole('ROLE_FACULTY')" >
                         
                          <li><a href="viewAdvisees"> View Advisees</a></li>
                          <li><a href="facultywaiverRequests">View Waiver Request</a></li>
                          <li><a href="facultySections">View Sections</a></li>
                          <li><a href="logout" >Logout</a></li>
                </sec:authorize>
               
                
            </ul>
        </div>
    </div>

    <div class="container">
		<sitemesh:write property='body' />
    </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Oak Yoga Studio 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery Version 1.11.0 -->
    <script src="/bootstrap/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/bootstrap/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    });
    </script>

</body>

</html>

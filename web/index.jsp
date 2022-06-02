<%-- 
    Document   : index
    Created on : May 12, 2022, 11:15:43 AM
    Author     : Admin
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <script src="js/myjs.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 88%, 70% 100%, 29% 93%, 0 96%, 0 0);
            }
        </style>
    </head>
    <body>
        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>
        
        <!--banner-->
        
        
        <div class="container-fluid p-0 m-0">
            
            
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3">Welcome To TechBlog</h3>    
                    
                    <p>A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.
                    </p>
          
                    <p>
                     Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos. The programs for these machines (such as a player piano's scrolls) did not produce different behavior in response to different inputs or conditions.   
                    </p>
                    
                    <button class="btn btn-outline-light btn-lg">  <span class="fa fa-snowflake-o"></span> It's Free</button>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg">  <span class="fa fa-user-circle fa-spin"></span> Login</a>
                </div>
                
            </div>
            
        </div>
        
        <div class="container">
            <div class="row mb-2">
                
                <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
                 <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
                 <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
            </div>
            <div class="row">
                
                <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
                 <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
                 <div class="col-md-4">
                    <div class="card" >
 
                    <div class="card-body">
                     <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                     <a href="#" class=" btn primary-background text-white">Read More</a>
                    </div>
                    </div>
                    
                </div>
                
            </div> 
        </div>
        
        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>      
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
            
    </body>
</html>

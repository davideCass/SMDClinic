<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:sec="http://www.springframework.org/security/tags">
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- other meta down this tag -->
	<meta name="description" content="" />
	<meta name="author" content="" />
	<link rel="icon" href="../../favicon.ico" />
	
	<title>SMDClinic</title>
	
	<!-- Bootstrap CSS -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	
	<!-- Prefetching pages... -->
	<link rel="${pageContext.request.contextPath}prefetch" href="home.html" />
	<link rel="${pageContext.request.contextPath}prefetch" href="theClinic.html" />
	
	<!-- AngularJS -->
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
	
	<!-- navbar and carousel behaviour -->
	<script src="${pageContext.request.contextPath}/js/app/homeNav.js"></script>
	
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/css/carousel.css" rel="stylesheet" />
</head>
<!-- NAVBAR -->
  <body ng-app = "homeNav">
  <div class="{{bodyClass}}">
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <div class="navbar-brand" >SMDClinic</div>
            </div>
            <div id="navbar" ng-controller="homeNavController" class="navbar-collapse collapse">
             	<div>
	                <ul class="nav navbar-nav">
									<li
										class ="active"><a
										href=""
										ng-click="href('${pageContext.request.contextPath}/patientArea');">Home</a></li>
							
									<li>
										<a href=""
										ng-click="href('${pageContext.request.contextPath}/index');">Exit</a>
									</li>
	              </ul>
              	</div>
              <ul class="nav navbar-nav navbar-right">
	                <li class="dropdown">
	                <a href="" class="dropdown-toggle" data-menuid="navig" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${loginString}<span class="caret"></span></a>
	              		<div id="navig" class="dropdown-menu">
							<f:view>
								<c:choose>
									<c:when test="${role eq 'patient'}">
										<jsp:include page="/WEB-INF/templates/patientMenu.jsp" />
									</c:when>
									<c:otherwise>
										<h4>ERROR</h4>
									</c:otherwise>
								</c:choose>
							</f:view>
						</div>
	              	</li>
	              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>



    <!-- AdminPanels -->
    <div class="notVisible"></div>
        <div class="notVisible"></div>
     <div class="notVisible"></div>
        <div class="notVisible"></div>
    <div id="HTMLContainer" class="container marketing">
    <div class="card card-block">
    <div class="row featurette">
    <a class="btn btn-success btn-lg" data-toggle="collapse" href="#listTypo" aria-expanded="false" aria-controls="listTypo">

    <font class="lead">List Exam Typologies</font><span class="caret"></span>
  </a></div></div>
  
  <div class="collapse" id="listTypo">
  <div class="card card-block">
    <div class="row featurette">
    <p class="lead">Insert Doctor code:</p>
    	<div class="card card-block">
    		<a href="${pageContext.request.contextPath}/listExamTypologies"><button class="btn btn-success btn-lg" >Exam Typology Finder</button></a>
    	</div>
    </div>
  </div>
</div>
    <div class="card card-block">
    <div class="row featurette">
    <a class="btn btn-success btn-lg" data-toggle="collapse" href="#res" aria-expanded="false" aria-controls="res">

    <font class="lead">List Result</font><span class="caret"></span>
  </a></div></div>
  
  <div class="collapse" id="res">
  <div class="card card-block">
    <div class="row featurette">
    <p class="lead">Insert Doctor code:</p>
    	<div class="card card-block">
    
<a href="${pageContext.request.contextPath}/listResults"><button class="btn btn-success btn-lg" >Exam Typology Finder</button></a>
    	</div>
    </div>
  </div>
</div>
    </div><!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.3.min.js"></script>
    <script>
    //<![CDATA[
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
    //]]>
    </script>
    <script src="js/bootstrap.js"></script>
   	<script src="js/holder.min.js"></script>
   	
   </div>
  </body>
</html>
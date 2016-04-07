<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    <title>Main</title>
</head>
<body>

<div class="container">

    <div class="text-center">
    <div class="jumbotron">
        <br>
        <br>
        <br>
        <h1>Take your choice!</h1>
        <p>...</p>
        <a class="btn btn-primary btn-lg" role="button" href = "<c:url value = "AddPatient.jsp"/>" >Add Patient</a>
        <a class="btn btn-success btn-lg" role="button" href = "<c:url value = "Patients"/>" >View All Patients</a>
        </div>
    </div>


   <%-- <p> <a href = "<c:url value = "AddPatient.jsp"/>"> Add Patient</a> </p>
    <p> <a href = "<c:url value = "Patients"/>"> View All Patients</a></p>--%>

    <%--<form name = "DeleteEmpty" action = "AllPatientController" method = "POST">
        <input type = "submit" value = "Delete empty patients">

    </form>--%>


</div>

</body>
</html>

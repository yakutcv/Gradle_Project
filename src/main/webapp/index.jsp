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

<link href="my.css" rel="stylesheet" type="text/css"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Main</title>
</head>
<body>

    <p> <a href = "<c:url value = "AddPatient.jsp"/>"> Add Patient</a> </p>
    <p> <a href = "<c:url value = "Patients"/>"> View All Patients</a></p>


    <%--<form name = "DeleteEmpty" action = "AllPatientController" method = "POST">
        <input type = "submit" value = "Delete empty patients">

    </form>--%>

</body>
</html>

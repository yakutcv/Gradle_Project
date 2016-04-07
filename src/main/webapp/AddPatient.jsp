<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Add Patient</title>
</head>
<body>
    <h1> Add Patient</h1>

    <form name = "AddPatient" action = "PatientController" method = "POST">

        <br> Name: <input type = "text" name = "name">

        <br> Last name: <input type = "text" name = "lastName">

        <br> Birth date: <input type = "text" name = "birthDate">

        <br> Enter birth date in format: day(10)/month(04)/year(1234)

        <br><input type = "submit" value = "Add Patient">

    </form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
</head>
<body>

<h2> All Patients</h2>

<%--<div>
<c:forEach items = "${patients}" var = "patient" >
    <br>${patient.id} ${patient.name} ${patient.lastName} ${patient.getBirthDateInString()}
</c:forEach>
</div>--%>

<table border = "1">
    <tr>
        <th> id </th>
        <th> Type </th>
        <th> Date </th>
        <th> Report </th>
    </tr>
    <c:forEach items = "${analyzes}" var = "analysis">
        <tr>
            <td> ${analysis.id}</td>
            <td> ${analysis.getType()} </td>
            <td> ${analysis.getReport()} </td>
            <td> ${analysis.getDateInString()} </td>
        </tr>
    </c:forEach>
</table>

<form name = "goIndex" action = "Patients" method = "POST">
    <input type = "submit" value = "Go back to the main page">
</form>


</body>
</html>

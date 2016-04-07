<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


    <title>All Patients</title>

    <script>

        var counter = document.querySelector("#count");
        var number = counter.value;

        function getCounter(){
            number++;
            counter.innerHTML += number;
        }

        getCounter();

    </script>
</head>
<body>




<header>All Patients </header>

    <h2> All Patients</h2>

    <table border = "1">
    <tr>
        <th> № </th>
        <th> Name </th>
        <th> Last Name </th>
        <th> Birth Date </th>
    </tr>
        <c:forEach items = "${patients}" var = "patient">
            <tr>
            <td id="count">0</td>
            <td> ${patient.name} </td>
            <td> ${patient.lastName} </td>
            <td> ${patient.getBirthDateInString()} </td>
                <td>
                    <form name = "edit" action = "EditPatientController?id=${patient.id}" method = "POST">
                        <input type = "submit" value = "Edit">
                    </form>
                </td>
                <td>
                    <form name = "delete" action = "DisabledPatient" method = "POST">
                         <input type = "submit" value = "Delete">
                    </form>
                </td>
                <td>
                    <form name = "analyzes" action = "AllAnalyzes?id=${patient.id}" method = "POST">
                    <input type = "submit" value = "Analyzes">
                    </form>
                </td>
            </tr>
        </c:forEach>
            </table>

        <form name = "goIndex" action = "Patients" method = "POST">
            <input type = "submit" value = "Go back to the main page">
        </form>


    </body>
</html>

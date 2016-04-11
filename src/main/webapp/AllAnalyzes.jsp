<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" />

    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>

    <title>All Analyzes</title>
</head>

<body>
<c:set var="count" value="${1}"/>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 text-center> All analyzes for patient ${patient.getFullName()}</h2>
            <div class="table-responsive">
                <table id="mytable" class="table table-bordred table-striped">
                    <thead>
                    <th>#</th>
                    <th>Type Analyzes</th>
                    <th>Date</th>
                    <th>Report</th>
                    </thead>
                    <c:forEach items = "${analyzes}" var = "analysis">
                    <tbody>
                    <tr>
                        <td><c:out value="${count}"/></td>
                        <c:set var="count" value="${count+1}"/>
                        <td>${analysis.getType()}</td>
                        <td>${analysis.getDateInString()} </td>
                        <td>${analysis.getReport()}</td>
                    </tr>
                    </tbody>
            </div>
        </div>
        </c:forEach>
        </table>

        <a class="btn btn-default btn-lg" role="button" href = "<c:url value ="Patients"/>">
            <span class="glyphicon glyphicon-arrow-left"></span> Go back to the list with all patients </a>

        <a class="btn btn-success btn-lg" role="button" href = "<c:url value = "AddAnalyzes?id=${patient.id}"/>">
            <span class="glyphicon glyphicon-plus"></span> Add </a>

        <input type="hidden" name = "id" value="${patient.id}">

    </div>
</div>
</body>
</html>

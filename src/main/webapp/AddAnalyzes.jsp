<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <title>Add Analysis</title>
</head>

<body>

<div class="container">
    <div class="row">
        <div class=" col-sm-offset-1 col-sm-8">
            <br>
            <br>

            <div class="row">
                <p class="lead text-center">Add Analysis for patient ${patient.getFullName()} with id ${patient.getId()} </p>

                <%--<p class="bg-success validation-msg hide-content" id="successMassage">Форма заполнена правильно</p>

                        <p class="bg-danger validation-msg hide-content" id="errorMessage">Ошибка заполнения формы</p>--%>
                <form class="form-horizontal text-center" id="completedForm" action = "AddAnalyzes" method = "POST">
                    <div class="form-group">
                        <label for="inputType" class="col-sm-2 control-label">Type Analyzes</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="inputType" name="type" placeholder="Type Analyse">
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="inputReport" class="col-sm-2 control-label">Report</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="inputReport" name="report" placeholder="Report">

                        </div>
                    </div>
                    <div class="col-md-1">
                    <label class="col-sm-2 control-label text-center">Date</label>
                    </div>
                    <div class="form-group">

                        <div class="col-sm-2">
                            <label for="inputDay" class="col-sm-2 control-label text-center center-block">Day</label>
                            <input type="text" class="form-control" id="inputDay" name="Day" placeholder="Day">
                        </div>

                        <div class="col-sm-2">
                            <label for="inputMont" class="col-sm-2 control-label text-center center-block">Month</label>
                            <input type="text" class="form-control" id="inputMont" name="Month" placeholder="Month">
                        </div>
                            <div class="col-sm-2">
                            <label for="inputYear" class="col-sm-2 control-label text-center center-block">Year</label>
                            <input type="text" class="form-control" id="inputYear" name="Year" placeholder="Year">
                            </div>
                        <div class="col-sm-2">
                            <label for="inputHour" class="col-sm-2 control-label text-center center-block">Hour</label>
                            <input type="text" class="form-control" id="inputHour" name="Hour" placeholder="Hour">
                        </div>
                            <div class="col-sm-2">
                            <label for="inputMinutes" class="col-sm-2 control-label text-center center-block">Minutes</label>
                            <input type="text" class="form-control" id="inputMinutes" name="Minutes" placeholder="Minutes">
                            </div>

                    </div>


                    <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" id="submit" class="btn btn-lg btn-primary bottom-left">Add</button>
                    </div>

                        <input type="hidden" name = "id" value="${patient.getId()}">
                        <%-- <div class="col-sm-offset-2 col-sm-10">
                           <button type="submit" id="submit" class="btn btn-default">Проверить</button>
                         </div>--%>
                </form>
                    </div>

                    </div>


            </div>

        </div>

</body>
</html>

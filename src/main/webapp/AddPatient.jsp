<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>New Patient</title>
    <!-- CSS -->


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="${pageContext.request.contextPath}assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}assets/css/form-elements.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/jquery.toastmessage.css">


    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.backstretch.min.js"></script>


    <script type="text/javascript">
        var d = new Date();
        $(function () {
            $('#datetimepicker4').datetimepicker({
                format: 'DD/MM/YYYY',
                maxDate:d
            });
        });
    </script>

</head>

<body>

<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h2 id="error_message" style="display: none"> </h2>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>New patient</h3>
                                <p>To add a new patient, please fill all fields:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>

                        <div class="form-bottom">
                            <div role="form" name="AddPatient" class="registration-form">

                                <div class="form-group">
                                    <label class="sr-only" for="form-first-name">First name</label>
                                    <input type="text" name="name" placeholder="First name..." class="form-first-name form-control" id="form-first-name">
                                </div>


                                <div class="form-group">
                                    <label class="sr-only" for="form-last-name">Last name</label>
                                    <input type="text" name="lastName" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
                                </div>


                                <div class="form-group">
                                    <label for="datetimepicker4" class="col-sm-2 control-label sr-only">Birth Date</label>
                                    <input type='text' class="form-control " placeholder="Birthday..." id='datetimepicker4' name="birthDate"/>
                                </div>

                                <button type="submit" class="btn form-control" onclick="checkEqualsPatient(event)">Add Patient</button>

                                <input type="hidden" name = "id" value="${patient.getId()}">

                            </div>

                            <form name = "goToPatietnsList" action = "Patients" method = "POST">
                                <button type="submit" class="btn btn-primary">Go back to the main page</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="col-sm-8 col-sm-offset-2">
                <div class="footer-border"></div>
                <p>Made by Andrew Jasinskiy having a lot of fun. <i class="fa fa-smile-o"></i></p>
            </div>
        </div>
    </div>
</footer>



<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>


<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/myScripts.js"></script>
<script src="${pageContext.request.contextPath}js/jquery.toastmessage.js"></script>


</body>
</html>
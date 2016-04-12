
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
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">


    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/validate.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#datetimepicker4').datetimepicker({
                format:'DD/MM/YYYY'
            });
        });
    </script>
</head>

<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1>Form to add a new patient</h1>
                </div>
            </div>

            <div class="row">

                <p id="error_message" style="display: none">Same patient</p>

                <div class="col-sm-6 col-sm-offset-3">
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Enter now</h3>
                                <p>To add a new patient, please fill all fields:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>

                        <div class="form-bottom">
                            <form <%--role="form"--%> class="registration-form">

                                <div class="form-group">
                                    <label class="sr-only" for="form-first-name">First name</label>
                                    <input type="text" name="name" class="form-control" id="form-first-name">
                                </div>

                                <div class="form-group">
                                    <label class="sr-only" for="form-last-name">Last name</label>
                                    <input type="text" name="lastName" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
                                </div>

                                <div class="form-group">
                                    <label for="datetimepicker4" class="col-sm-2 control-label sr-only">Birth Date</label>
                                        <input type='text' class="form-control" id='datetimepicker4' name="birthDate" placeholder="Birth Date"/>
                                </div>

                                <div class="form-group">
                                    <label for="bbbb" class="col-sm-2 control-label sr-only">Adddd</label>
                                    <input type='text' class="form-control" id='bbbb' name="date"
                                           placeholder="Date..."/>
                                </div>


                              <%--  <button type = "submit" class="btn" onclick="checkEqualsPatient(event)" >Add Patient</button>--%>
                                <a type = "submit" class="btn" onclick="checkEqualsPatient(event)">Add Patient</a>


                            </form>
                            <button class="btn" onclick="checkEqualsPatient(event)">Check</button>

                            <form name = "goIndex" action = "Patients" method = "POST">
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
            <br>
            <div class="col-sm-8 col-sm-offset-2">
                <div class="footer-border"></div>
                <p>Made by Andrew Jasinskiy having a lot of fun. <i class="fa fa-smile-o"></i></p>
            </div>

        </div>
    </div>
</footer>

<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>

<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>



<script src="assets/js/placeholder.js"></script>

<script>
/*function checkEqualsPatient(event) {

    $('.registration-form input[type="text"], .registration-form textarea').on('focus', function() {
        $(this).removeClass('input-error');
    });

    $('.registration-form').on('submit', function(e) {
        $(this).find('input[type="text"], textarea').each(function(){
            if( $(this).val() == "" ) {
                e.preventDefault();
                $(this).addClass('input-error');
            }
            else {
                $(this).removeClass('input-error');
            }
        });

    });*/



/*
    var fistName = $('#form-first-name').val();
    var lastName =  $('#form-last-name').val();
    var date =  $('#datetimepicker4').val();
    $.get('AddPatient',{'name':fistName,'lastName':lastName, 'birthDate':date}, function (data) {
        if(data == 'Same') {
            event.preventDefault();
            $('#error_message').css({'display':'inline'});





        } else{
            $.post('AddPatient',{'name':fistName,'lastName':lastName, 'birthDate':date});
            window.location.replace("/Patients")
        }
    });
}
*/








</script>





</body>



</html>
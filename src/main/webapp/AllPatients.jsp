<%--
  Created by IntelliJ IDEA.
  User: ayasintc
  Date: 4/7/2016
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" />

    <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>



    <title>All Patients</title>

</head>

<body>

<c:set var="count" value="${1}"/>

<div class="container">
    <div class="row">

        <div class="col-md-12">
            <h4>All Patients</h4>
            <div class="table-responsive">

                <table id="mytable" class="table table-bordred table-striped">
                    <thead>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Birthdate</th>
                    <th>Analyzes</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <c:forEach items = "${patients}" var = "patient">
                    <tbody>
                    <tr>
                        <td><c:out value="${count}"/></td>
                        <c:set var="count" value="${count+1}"/>
                        <td>${patient.name}</td>
                        <td>${patient.lastName} </td>
                        <td>${patient.getBirthDateInString()}</td>
                        <td>
                                <form class="col-sm-5" name = "listAnalyzes" action ="AllAnalyzes?id=${patient.id}" method = "POST">
                                <p data-placement="top" data-toggle="tooltip" title="Analyzes">
                                    <button class="btn btn-success" data-title="Analyzes">
                                        <span class="glyphicon glyphicon-tint"> </span></button></p>
                            </form>
                        </td>

                        <td>
                            <form class="col-sm-5" name = "listAnalyzes" action = "EditPatientController?id=${patient.id}" method = "POST">
                                <p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn" data-title="Edit">
                                    <span class="glyphicon glyphicon-pencil"></span></button>
                                </p>
                            </form>
                        </td>

                        <td>
                           <%-- <form class="col-sm-5" name = "deleteAnalyzes" action ="DeletePatient?id=${patient.id}" method = "GET">--%>
                            <div class="col-sm-5">
                                <p data-placement="top" data-toggle="tooltip" title="Delete">
                                    <button  class="btn btn-danger" id="deletePatient" data-id="${patient.id}" data-name="${patient.name}" data-href="DeletePatient?id=${patient.id}" data-toggle="modal" data-target="#myModal">
                                    <span class="glyphicon glyphicon-trash"></span>
                                </button>
                                </p>
                            </div>
                           <%-- </form>--%>
                          <%--  modal--%>
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">

                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                                            <h4 class="modal-title custom_align" id="Heading">Delete patient</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> <p class="debug-url"> <%--Are you sure you want to delete patient ${patient.name} ${patient.lastName} ?--%></p></div>
                                        </div>
                                        <div class="modal-footer">

                                               <%-- <button class="btn btn-success" id ="deleteButton" type="submit"><span class="glyphicon glyphicon-ok-sign"></span>Yes </button>--%>

                                                <a class="btn btn-success" id ="deleteButton" type="submit"><span class="glyphicon glyphicon-ok-sign"></span>Yes <a/>

                                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>No</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       <%-- end modal--%>
                        </td>
                    </tr>

                    </tbody>

            </div>
            <input type="hidden" id="tmpId" value = "patientId" name = "id" value="${patient.getId()}">
        </div>

        </c:forEach>
        </table>

        <form name = "goIndex" action = "Patients" method = "POST">
            <button type="submit" class="btn btn-default btn-lg"> <span class="glyphicon glyphicon-arrow-left"></span>Go back to the main page</button>
        </form>
    </div>
</div>


<%--

<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading1">Edit Your Detail</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input class="form-control " type="text" placeholder="Mohsin">
                </div>
                <div class="form-group">

                    <input class="form-control " type="text" placeholder="Irshad">
                </div>
                <div class="form-group">
                    <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
                </div>
            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
--%>

<script>

    $('#myModal').on('show.bs.modal', function(e) {
        /*alert(e.relatedTarget);*/

        var parsedString = $(e.relatedTarget).data('href');

        var name = $(e.relatedTarget).data('name');
        var id = $(e.relatedTarget).data('id');
        $(this).find('#deleteButton').attr('href', 'DeletePatient?id='+id);
        //$(this).find('#deleteButton').attr('href', 'DeletePatient?id='+id);//$(e.relatedTarget).data('href'));

        $('.debug-url').html('Are you sure you want to delete patient <strong>' + name +" ?" + '</strong>');
    });
</script>

</body>
</html>

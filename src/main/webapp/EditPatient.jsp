
<%--
  Created by IntelliJ IDEA.
  User: Phenom
  Date: 08.04.2016
  Time: 0:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
  <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

  <title>Edit Patient</title>
</head>
<body>


<div class="container">
  <div class="row">
    <div class=" col-sm-offset-1 col-sm-8">
      <br>
      <br>

      <div class="row">
        <p class="lead text-center">Edit patient ${patient2.getFullName()} with id ${patient2.getId()} </p>

        <%--<p class="bg-success validation-msg hide-content" id="successMassage">Форма заполнена правильно</p>

                <p class="bg-danger validation-msg hide-content" id="errorMessage">Ошибка заполнения формы</p>--%>
        <form class="form-horizontal text-center" id="completedForm" action = "EditPatientController" method = "GET">
          <div class="form-group">
            <label for="inputName" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="inputName" name="name" placeholder="Name">
            </div>
          </div>

          <div class="form-group">
            <label for="inputLastName" class="col-sm-2 control-label">Last Name</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="inputLastName" name="lastName" placeholder="Last Name">
            </div>
          </div>

          <div class="form-group">
            <label for="inputBirthDate" class="col-sm-2 control-label">Birth date</label>
            <div class="col-sm-8">
              <input type="text" class="form-control" name = "birthDate" id="inputBirthDate" placeholder="Birth date">
              <p class=" text-left small">Enter birth date in format: dd/mm/yyyy </p>
            </div>

          </div>
          <div class="form-group">

            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" id="submit" class="btn btn-lg btn-default">Edit</button>
            </div>

              <input type="hidden" name = "id" value="${patient2.getId()}">
           <%-- <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" id="submit" class="btn btn-default">Проверить</button>
            </div>--%>

          </div>
        </form>

      </div>

    </div>

    </div>
  </div>
</div>

</body>
</html>


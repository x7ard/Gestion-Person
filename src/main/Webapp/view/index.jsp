<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>Gestion Personne</title>
</head>
<style>
    .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: auto;
    }
</style>

<body class="text-center">
    <div class="container-sm">
    
    

        <form:form class="form-signin" action="add" modelAttribute="person" method="POST">
            <h1 class="h3 mb-3 font-weight-normal">Welcome</h1>

            <form:label path="nom" for="inputEmail" class="sr-only">Nom</form:label>
            <form:input path="nom" id="inputEmail" class="form-control" placeholder="Nom" />

            <form:label path="prenom" for="prenom" class="sr-only">Prenom</form:label>
            <form:input path="prenom" id="prenom" class="form-control" placeholder="Prenom" />

            <form:label path="age"  for="age" class="sr-only">age</form:label>
            <form:input path="age" id="age" class="form-control" placeholder="Age" />

            <br><button class="btn btn-lg btn-primary " type="submit">Valider</button>
        </form:form>

        <br>

        <table class="table">
            <thead>
                <tr class="table-primary">
                	<th scope="col">ID</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Prenom</th>
                    <th scope="col">age</th>
                    <th scope="col">O.o</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${list}">
                <tr>
                	<td>${list.id}</td>
                    <td>${list.nom}</td>
                    <td>${list.prenom}</td>
                    <td>${list.age}</td>
                    <td>
                        <a href="sendData?id=${list.id }"><button type="button" class="btn btn-warning">Update</button></a>
                        <a href="delete?id=${list.id }"><button type="button"  class="btn btn-danger"> Delete</button></a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
            
        </table>
    </div>
</body>

</html>
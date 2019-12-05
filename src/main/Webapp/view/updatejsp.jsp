<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<body class="text-center">
    <div class="container-sm">

        <form:form class="form-signin" action="update" modelAttribute="person" method="POST">
        
            <h1 class="h3 mb-3 font-weight-normal">Welcome</h1>
			
			
            <form:input path="id" type="hidden" />
            
            <form:label path="nom" for="inputEmail" class="sr-only">Nom</form:label>
            <form:input path="nom" id="inputEmail" class="form-control" placeholder="Nom" />

            <form:label path="prenom" for="prenom" class="sr-only">Prenom</form:label>
            <form:input path="prenom" id="prenom" class="form-control" placeholder="Prenom" />

            <form:label path="age"  for="age" class="sr-only">age</form:label>
            <form:input path="age" id="age" class="form-control" placeholder="Age" />

            <br><button class="btn btn-lg btn-primary " type="submit">Valider</button>
        </form:form>
        
     </div>
     </div>

</body>
</html>
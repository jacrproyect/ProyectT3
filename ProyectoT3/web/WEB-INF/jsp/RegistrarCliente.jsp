<%-- 
    Document   : add
    Created on : 24/10/2017, 10:11:41 PM
    Author     : VAIO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <div class="container"></div>
    <li class="active">Agregar</li>


    <form:form method="POST" commandName="ClienteMO">
        
        <p>
            <form:label path="Nombre_persona">Nombre: </form:label>
            <form:input path="Nombre_persona" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="Apellido_persona">Apellido: </form:label>
            <form:input path="Apellido_persona" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="dni">DNI: </form:label>
            <form:input path="dni" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="telefono">Telefono: </form:label>
            <form:input path="telefono" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="departamento">Departamento: </form:label>
            <form:input path="departamento" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="provincia">Provincia: </form:label>
            <form:input path="provincia" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="distrito">Distrito: </form:label>
            <form:input path="distrito" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="direccion">Direccion: </form:label>
            <form:input path="direccion" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="correo">Correo: </form:label>
            <form:input path="correo" cssClass="form-control" /> 
        </p>
 
        <p>
            <form:label path="ruc">RUC: </form:label>
            <form:input path="ruc" cssClass="form-control" /> 
        </p>
        <p>
            <form:label path="razon_social">Razon Social: </form:label>
            <form:input path="razon_social" cssClass="form-control" /> 
        </p>
           <p>
            <form:label path="estado">Razon Social: </form:label>
            <form:input path="estado" cssClass="form-control" /> 
        </p>
        <input type="submit" value="Enviar" class="btn btn-danger">

    </form:form> 


</body>

</html>

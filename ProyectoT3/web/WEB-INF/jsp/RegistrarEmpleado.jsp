<%-- 
    Document   : add
    Created on : 24/10/2017, 10:11:41 PM
    Author     : VAIO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link href="componentes/css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="componentes/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://use.fontawesome.com/94bd176d70.js"></script>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        
        <title>Panel de control de sistemas de ventas </title>
    </head>
     <nav class="navbar navbar-light bg-faded" style="background-color: #7f8c8d;">
        <a class="navbar-brand" href="#" >
        Novelty Store
      </a>
    </nav>
     <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3" style="background-color: #2c3e50">
                <div class="contenedo-img ">
                    <div class="text-center circle-img ">
                        <img src="componentes/img/user.png" class="rounded rounded-circle" alt="..." width="100%">
                    </div> 
                </div>
                <div class="text-center mt-sm-3">
                    <small class="text-muted col-xl-12" style="color: white !important;font-size: 18px !important"> Usuario: Cristhian Limas</small><br>
                    <small class="text-muted col-xl-12" style="color: white !important;font-size: 14px !important">Administrador del Sistema</small>
                </div>
                <div class="row" >

                    <section class="ac-container">
                        <div>
                            <input id="ac-1" name="accordion-1" type="checkbox" />
                            <label for="ac-1">
                                <i class="fa fa-users" aria-hidden="true"></i>     Administrador de empleado <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i> 
                            </label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="<c:url value="Empleado.htm"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo Empleado</a></li>
                                    <li><a href="<c:url value="ListarEmpleado.htm"/>"><i class="fa fa-list-ul" aria-hidden="true"></i> Buscar Empleado</a></li>
                                    <li><a href="<c:url value="EditarEmpleado.htm"/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Modificar Empleado</a></li>
                                </ul>
                            </article>
                        </div>
                        <div>
                            <input id="ac-2" name="accordion-1" type="checkbox"  />
                            <label for="ac-2"> <i class="fa fa-address-book-o" aria-hidden="true"></i> Administrar Cliente <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo Cliente</a></li>
                                    <li><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i> Buscar Cliente</a></li>
                                    <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Desactivar Cliente</a></li>
                                </ul>
                            </article>
                        </div>
                        <div>
                            <input id="ac-3" name="accordion-1" type="checkbox"  />
                            <label for="ac-3"> <i class="fa fa-truck" aria-hidden="true"></i> Administrar Almacén <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="<c:url value="RegistrarProducto.htm"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo Almacén</a></li>
                                    <li><a href="<c:url value="ListarProducto.htm"/>"><i class="fa fa-list-ul" aria-hidden="true"></i> Buscar Almacén</a></li>
                                    <li><a href="<c:url value="EditarProducto.htm"/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Modificar Almacén</a></li>
                                </ul>
                            </article>
                        </div> 
                        <div>
                            <input id="ac-4" name="accordion-1" type="checkbox"  />
                            <label for="ac-4"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> Administrar Proveedor <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="<c:url value="RegistrarProveedor.htm"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo Proveedor</a></li>
                                    <li><a href="<c:url value="ListarProveedor.htm"/>"><i class="fa fa-list-ul" aria-hidden="true"></i> Buscar Proveedor</a></li>
                                    <li><a href="<c:url value="EditarProveedor.htm"/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Modificar Proveedor</a></li>
                                </ul>
                            </article>
                        </div>                         
                        <div><!--...--></div>
                    </section>

                </div>
            </div>
                                    

<form:form method="POST" commandName="EmpleadoMO" >
        
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
            <form:label path="Sueldo">Sueldo: </form:label>
            <form:input path="Sueldo" cssClass="form-control" /> 
        </p>
      
        <p>
            <form:label path="idrol">Rol: </form:label>
            <form:input path="idrol" cssClass="form-control" /> 
        </p>
        
        
        
        <p>
            <form:label path="usuario">Correo: </form:label>
            <form:input path="usuario" cssClass="form-control" /> 
        </p>
 
        <p>
            <form:label path="password">Sueldo: </form:label>
            <form:input path="password" cssClass="form-control" /> 
        </p>
      
        <p>
            <form:label path="estado">Rol: </form:label>
            <form:input path="estado" cssClass="form-control" /> 
        </p>
      
       


        <input type="submit" value="Enviar" class="btn btn-danger">

    </form:form> 

        </div>
     </div>
                                

</body>

</html>










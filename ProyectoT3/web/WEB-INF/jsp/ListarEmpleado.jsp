<%-- 
    Document   : home
    Created on : 04/10/2017, 03:21:01 PM
    Author     : VAIO
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link href="componentes/css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="componentes/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://use.fontawesome.com/94bd176d70.js"></script>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <title>Listar Empleado</title>
    </head>
    <body>
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
                                    <li><a href="<c:url value="index.htm"/>"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo Empleado</a></li>
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
                <div class="col-xl-9" style="background-color:white">
                    <div class=" mt-3">                
                        <div class="row">
                            <div class="col-xl-9">
                                <h3>
                                    Buscar 
                                    <small class="text-muted">Empleado</small>
                                </h3>                        
                            </div>
                            <div class="col-xl-3">
                                <h5>Bienvenido al Sistema</h5>
                                <div class="row">
                                    <small class="text-muted col-xl-12"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Usuario: Cristhian Limas</small>
                                    <small class="text-muted col-xl-12">Administrador del Sistema</small>
                                </div>
                            </div>                       
                        </div>

                    </div>
                    <hr>
                    <nav class="breadcrumb">
                        <span class="glyphicon glyphicon-euro"></span>
                        <a class="breadcrumb-item" href="#"><i class="fa fa-users" aria-hidden="true"></i> Administrador de Empleado</a>
                        <span class="breadcrumb-item active">Buscar Empleado</span>
                    </nav>                
                    <div class="container mt-5">
                        <div></div>
                        <form class="breadcrumb">

                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="card"  style="margin-bottom: 10px;">
                                            <div class="text-nowrap text-center" style="background-color: #2c3e50;color: white !important;border-radius: 5px;
                                                 padding: 5px;display: block;">
                                                Seleccione el tipo de búsqueda y complete el parámetro respéctivo
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-xl-3">
                                                <label for="formGroupExampleInput2">Buscar por:</label>
                                                <select class="form-control">
                                                    <option>Nombre</option>
                                                    <option>Código</option>
                                                    <option>DNI</option>
                                                </select>
                                            </div>

                                            <div class="form-group col-xl-9" >
                                                <label for="formGroupExampleInput2">Nombre:</label>
                                                <div class="form-inline">
                                                    <input class="form-control  mr-sm-2 col-xl-10" type="text" placeholder="Search" >

                                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i>Search</button>

                                                </div>
                                            </div>                                           
                                        </div>
                         
                                      
                                        
                                        <table class="table table-bordered table-striped  table-lower">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>DNI</th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th class="hidden-xl-down">Telefono</th>
                                                    <th class="hidden-xl-down">Departamento</th>
                                                    <th class="hidden-xl-down">Provincia</th>
                                                    <th class="hidden-xl-down">Distrito</th>
                                                    <th class="hidden-xl-down">Direccion</th>
                                                    <th class="hidden-xl-down">Correo</th>
                                                    <th class="hidden-xl-down">Sueldo</th>
                                                    <th class="hidden-xl-down">idRol</th>
                                                    <th>Rol</th>
                                                    <th class="hidden-xl-down">Accion</th>
                                                    <th>Opcion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${ListarEmpleados}" var="dato" varStatus="status" >
                                                    <tr>
                                                        <td ><c:out value="${dato.idpersona}"/></td>
                                                        <td><c:out value="${dato.dni}"/></td>
                                                        <td><c:out value="${dato.nombre_persona}"/></td>
                                                        <td><c:out value="${dato.apellido_persona}"/></td>
                                                        <td><c:out value="${dato.nombre_rol}"/></td>
                                                        <td><c:out value="${ListarRol[status.index]}"/></td>
        
                                    
                                                        <td>
                                                            <a href="<c:url value="EliminarEmpleado.htm?idPersona=${dato.idpersona}"/>" class="btn btn-default"><span class="glyphicon glyphicon-pencil">Eliminar</span></a>
                                                            <a href="<c:url value="ActualizarEmpleado.htm?idPersona=${dato.idpersona}"/>" class="btn btn-default"><span class="glyphicon glyphicon-trash">Editar</span></a>

                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>

                                        </table>                                   
                                    </div>
                                </div>
                            </div>
                        </form>                   
                    </div> 
                    <p>
                        <a href="<c:url value="index.htm"/>" class="btn btn-success"><i class="fa fa-plus-square" aria-hidden="true"></i> Agregar</a>
                        <a href="<c:url value="index.htm"/>" class="btn btn-success"><i class="fa fa-reply" aria-hidden="true"></i> Atrás</a>
                    </p> 
                </div>

            </div>


        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </body>
</html>

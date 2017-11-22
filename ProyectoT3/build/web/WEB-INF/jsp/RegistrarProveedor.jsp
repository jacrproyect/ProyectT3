<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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
        
        <title>Panel de control de sistemas de ventas </title>
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
                <div class="row" >
                    <section class="ac-container">
                        <div>
                            <input id="ac-1" name="accordion-1" type="checkbox" />
                            
                            
                                
                            <label for="ac-1">
                                <i class="fa fa-users" aria-hidden="true"></i> Administrador de empleado <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i> 
                            </label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="#">Nuevo Empleado</a></li>
                                    <li><a href="#">Buscar Empleado</a></li>
                                    <li><a href="#">Modificar Empleado</a></li>
                                </ul>
                            </article>
                        </div>
                        <div>
                            <input id="ac-2" name="accordion-1" type="checkbox"  />
                            <label for="ac-2"> <i class="fa fa-address-book-o" aria-hidden="true"></i> Administrar Cliente <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="#">Nuevo Cliente</a></li>
                                    <li><a href="#">Buscar Cliente</a></li>
                                    <li><a href="#">Desactivar Cliente</a></li>
                                </ul>
                            </article>
                        </div>
                        <div>
                            <input id="ac-3" name="accordion-1" type="checkbox"  />
                            <label for="ac-3"> <i class="fa fa-truck" aria-hidden="true"></i> Administrar Almacén <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="#">Nuevo Almacén</a></li>
                                    <li><a href="#">Buscar Almacén</a></li>
                                    <li><a href="#">Modificar Almacén</a></li>
                                </ul>
                            </article>
                        </div> 
                        <div>
                            <input id="ac-4" name="accordion-1" type="checkbox"  />
                            <label for="ac-4"> <i class="fa fa-shopping-cart" aria-hidden="true"></i> Administrar Proveedor <i class="fa fa-chevron-down" aria-hidden="true" style="float: right"></i></label>
                            <article class="ac-small">
                                <ul class="submenu">
                                    <li><a href="#">Nuevo Proveedor</a></li>
                                    <li><a href="#">Buscar Proveedor</a></li>
                                    <li><a href="#">Modificar Proveedor</a></li>
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
                              Registrar 
                              <small class="text-muted">Proveedor</small>
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
                  <span class="breadcrumb-item active">Editar Empleado</span>
                </nav>                
                <div class="container mt-5">
                    <div></div>
                    <form class="breadcrumb">
                        
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="card"  style="margin-bottom: 10px;">
                                        <div class="text-nowrap text-center" style="background-color: #2c3e50;color: white !important;border-radius: 5px;
                                             padding: 5px;display: block;">
                                        Ingrese datos del Proveedor
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Razon Social:</label>
                                      <input class="form-control" type="text"id="example-text-input" placeholder="Ingrese Razon Social de la Empresa">
                                    </div> 
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Dirección:</label>
                                      <input class="form-control" type="text"id="example-text-input" placeholder="Ingrese Dirección de la Empresa">
                                    </div>
                                    <div class="mt-3">
                                        
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">RUC:</label>
                                      <input class="form-control" type="text"id="example-text-input" placeholder="Ingrese RUC de la Empresa">
                                    </div> 
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Sitio Web:</label>
                                      <input class="form-control" type="text"id="example-text-input" placeholder="Ingrese Sitio Web de la Empresa">
                                    </div>                                      
                                    <div style="color:#ECEEEF;margin-top:38px !important;" >
                                        espacio
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">E-MAIL</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese E-MAIL de la empresa">
                                        </div>                                           
                                    </div>                                    
                                    <div class="col-xl-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Teléfono:</label>
                                            <input class="form-control" type="text"id="example-text-input" placeholder="Ingrese Teléfono de la Empresa">
                                        </div>                                       
                                    </div>

                                </div>
                                <div class="col-xl-6">
                                    <div class="card"  style="margin-bottom: 10px;">
                                        <div class="text-nowrap text-center" style="background-color: #2c3e50;color: white !important;border-radius: 5px;
                                             padding: 5px;display: block;">
                                        Observaciones y fecha de registro de la Empresa
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleTextarea">Observación:</label>
                                      <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                                    </div>
                                    <div class="form-group row">
                                      <label for="exampleTextarea">Fecha de Registro:</label>
                                      <div class="col-10">
                                        <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input">
                                      </div>
                                    </div>   
                                    <div class="form-group row">
                                      <label for="exampleTextarea">Contacto:</label>
                                      <div class="col-10">
                                        <input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input">
                                      </div>
                                    </div>
                                    <button type="submit" class="btn btn-danger">Cancelar</button>
                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                </div>
                            </div>
                        </div>
                    </form>                   
                </div> 
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    </body>
</html>

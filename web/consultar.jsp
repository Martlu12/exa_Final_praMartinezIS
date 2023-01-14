<%-- 
    Document   : consultar
    Created on : 06/01/2023, 08:38:08 AM
    Author     : luiis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <!-----------------------------BOOTSTRAP----------------------------->
                <!--Icono-->
                <link rel="Icon" type="img/png" href="img/gamers.jpg">
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<!--Ventanas emergentes-->
		<link rel="stylesheet" type="text/css" href="css/ventanas.css">
<!-----------------------------/BOOTSTRAP----------------------------->
        
    </head>
    <body>
        
    <center>
        <h1>GAMERS</h1>
        <img scr="img/gamers.jpg" class="img-responsive">
    </center>
        
    <div class="container">
        <div class="jumbotron">
            <center><h3>Datos de Aspirantes</h3></center>
            <div class="thumbnail"> 
                <center>
                   <marquee><h1>Verificar Datos</h1></marquee>
    <center><h1></h1></center>
    <hr>
    <!--Librerias de conexion a BD-->
    <%@page import = "java.sql.*"%>
    <%@page import = "conexion.Conexion" %>
    <%@page errorPage = "error.jsp" %>
    <!--/Librerias de conexion a BD-->
        
       <!--LLamada a la conexion de BD-->
    <%
       Conexion conexion=new Conexion("jdbc:mysql://localhost/bdvideojuegos","umartinez", "udl123");  
           String consultaCompetidores="SELECT * FROM tcompetidores";
           ResultSet rs=conexion.ejecutaSelect(consultaCompetidores);
           ResultSetMetaData rsmd =rs.getMetaData();//obtiene columnas
           int col=rsmd.getColumnCount(); //cuenta numero de columnas
    %>    
    <!--/LLamada a la conexion de BD--> 
    
     <!--Imprimir datos en tabla -->
       <!--/LLamada a la conexion de BD-->
    <div class="container">
           <div class="jumbotron">
               <center><h2>Consulta Datos de Competidores</h2></center>
               <hr>
               <div class="thumbnail">
                   <center>
                       <!--Tabla bootstrap -->
                       <table class="table table-hover alert-danger" border="0" >
                           <thead> <!--cabecera de Tabla bootstrap -->
                           <tr>
                               <%
                              for(int k=1;k<=col;k++){//inicia for 
                               %>
                        
                           <th scope="col"><h3><strong><%=  rsmd.getColumnName(k)%></strong></h3></th>
                       
                               <%
                              }//termina for
                               %>
                           </tr>
                           </thead>
                           <tbody><!--Cuerpo de Tabla bootstrap -->
                           <tr>
<%
                                while(rs.next()){//inicia while
                               %>
                               <td><h4><%=  rs.getString(1)%></h4></td>
                               <td><h4><%=  rs.getString(2)%></h4></td>
                               <td><h4><%=  rs.getString(3)%></h4></td>
                               <td><h4><%=  rs.getString(4)%></h4></td>
                               <td><h4><%=  rs.getString(5)%></h4></td>
                           </tr>
                           <%
                                }//termina while
                           %>
                           </tbody><!--/Cuerpo de Tabla bootstrap -->
                       </table>
                       <hr>
                     
                       <hr>
                       <h3>Fecha y Hora : <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Menu de Opciones</h4></a>
                   </center>    
               </div>
           </div>
       </div>
     
     <!--/Imprimir datos en tabla -->  
                </center>
                
            </div>
            
        </div>
        
        
    </div>
     
    
    
    
        <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
                
        
    </body>
</html>

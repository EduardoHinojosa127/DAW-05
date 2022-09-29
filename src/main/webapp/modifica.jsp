<%-- 
    Document   : modifica
    Created on : 28-sep-2022, 19:58:06
    Author     : Usuario
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%response.setIntHeader("Refresh", 5);%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                        url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                        user="root"
                        password="gatoronpedo123"/>

    <sql:query dataSource="${xcon}"
               var="result"
               sql="select NOMBRE, CLAVE, ESTADO from t_usuarios where CODIGO=${param.id}"
             
    />
    
        <h1>Modificar registro</h1>
        
        <form action="" method="post">
            <c:forEach var="item" items="${result.rows}">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td>Nombre:</td>
                        <td><input type="text" name="nombre" value="${item.NOMBRE}"/></td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td><input type="text" name="clave" value="${item.CLAVE}"/></td>
                    </tr>
                    <tr>
                        <td>Estado</td>
                        <td><input type="text" name="estado" value="${item.ESTADO}"/>
                            <input type="hidden" name="modifica" value="SI"/>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Modificar"/></td>
                    </tr>
                </tbody>
            </table>
            </c:forEach>
        </form>
        <c:if test="${param.modifica!=null}">
            <sql:update
               dataSource="${xcon}"
               sql="update t_usuarios set
               NOMBRE = '${param.nombre}',
               CLAVE = '${param.clave}',
               ESTADO = '${param.estado}' 
               where CODIGO=${param.id}"
               >
               </sql:update>
        </c:if>
        <a href="jstl_sql_a.jsp">Volver a los registros</a>
    </body>
</html>

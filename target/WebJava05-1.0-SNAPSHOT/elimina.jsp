<%-- 
    Document   : elimina
    Created on : 28-sep-2022, 20:37:38
    Author     : Usuario
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                        url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                        user="root"
                        password="gatoronpedo123"/>
        <c:if test="${param.id!=null}">
            <sql:update var="result" dataSource="${xcon}"
                        sql="delete from t_usuarios where CODIGO=${param.id}">               
            </sql:update>
            <c:if test="${result==1}">
                <p>Registro eliminado satisfactoriamente</p>
                <a href="jstl_sql_a.jsp">Volver a los registros</a>
            </c:if>
        </c:if>
    </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2019/3/16
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>name</td>
    </tr>
    <c:forEach items="${departments}" var="dep" varStatus="st">
        <tr>
            <td>${dep.id}</td>
            <td>${dep.depName}</td>

        </tr>
    </c:forEach>
</table>

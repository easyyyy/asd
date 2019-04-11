<%--
  Created by IntelliJ IDEA.
  User: lin
  Date: 2019/3/16
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>id</td>
        <td>className</td>
        <td>beginTime</td>
        <td>endTime</td>
        <td>state</td>
        <td>totalCount</td>
        <td>goCount</td>
        <td>leaveCount</td>
    </tr>
    <c:forEach items="${classes}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.className}</td>
            <td>${c.beginTime}</td>
            <td>${c.endTime}</td>
            <td>${c.state}</td>
            <td>${c.totalCount}</td>
            <td>${c.goCount}</td>
            <td>${c.leaveCount}</td>


        </tr>
    </c:forEach>
</table>
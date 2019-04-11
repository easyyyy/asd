<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>编号</td>
        <td>学生姓名</td>
        <td>入学时间</td>
        <td>就业时间</td>
        <td>学生状态</td>

    </tr>
    <c:forEach items="${students}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.stuName}</td>
            <td>${c.beginTime}</td>
            <td>${c.jobTime}</td>
            <td>${c.stuState}</td>



        </tr>
    </c:forEach>
</table>
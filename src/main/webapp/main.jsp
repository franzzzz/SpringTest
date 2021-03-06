<%--
  Created by IntelliJ IDEA.
  User: shirlies
  Date: 15-5-13
  Time: 下午2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <title>首页</title>
</head>
<body>
<p>这是首页电影集</p>
<br/>
<table>
  <tr><td>电影id</td><td>电影名字</td><td>电影首映时间</td><td>电影描述</td><td>导演</td><td>语言</td><td>时长</td></tr>
  <c:forEach var="movies" items="${homeMovies}">
    <tr>
      <td><c:out value="${movies.id}"></c:out></td>
      <td><c:out value="${movies.name}"></c:out></td>
      <td><c:out value="${movies.time}"></c:out></td>
      <td><c:out value="${movies.description}"></c:out></td>
      <td><c:out value="${movies.director}"></c:out></td>
      <td><c:out value="${movies.language}"></c:out></td>
      <td><c:out value="${movies.mLong}"></c:out></td>
    </tr>
  </c:forEach>
</table>
<br/>
<p>下面是推荐的电影</p>
<table>
  <tr><td>电影id</td><td>电影名字</td><td>电影首映时间</td><td>电影描述</td><td>导演</td><td>语言</td><td>时长</td></tr>
  <c:forEach var="movies" items="${recomMovies}">
    <tr>
      <td><c:out value="${movies.id}"></c:out></td>
      <td><c:out value="${movies.name}"></c:out></td>
      <td><c:out value="${movies.time}"></c:out></td>
      <td><c:out value="${movies.description}"></c:out></td>
      <td><c:out value="${movies.director}"></c:out></td>
      <td><c:out value="${movies.language}"></c:out></td>
      <td><c:out value="${movies.mLong}"></c:out></td>
    </tr>
  </c:forEach>
</table>
<p>下面是搜索框</p>
<form action="/movie/search" method="get">
  <input type="search" name="search" value="关键词"/>
  <input type="submit" value="搜索"/>
</form>
</body>
</html>

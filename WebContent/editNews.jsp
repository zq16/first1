<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="editNewsServlet" method="post">
	
		新闻类型：
		<select name="ntid" >
			<c:forEach items="${topiclist}" var="topics">
			<%--  --%>
			<option value="${topics.tid }" <c:if test="${topics.tid==newsById.ntid}"> selected="selected"</c:if> >${topics.tname }</option>
			
			</c:forEach>
			<!-- <option value="2">国际</option>
			<option value="3">军事</option> -->
		</select>
		<br/>
		新闻标题：<input type="text" name="nid" value="${newsById.nid}"><br/>
		新闻标题：<input type="text" name="ntitle" value="${newsById.ntitle}"><br/>
		新闻作者：<input type="text" name="nauthor" value="${newsById.nauthor}"><br/>
		图片地址：<input type="text" name="npicPath" value="${newsById.npicPath}">
		新闻内容：<textarea name="ncontent" rows="10" cols="20" >${newsById.ncontent}</textarea>
		新闻概括：<textarea name="nsummary" rows="10" cols="20">${newsById.nsummary}</textarea>
		<input type="submit">
	</form>
	
</body>
</html>
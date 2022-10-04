<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<script src="<spring:url value="/resources/js/jquery-3.2.1.js"/>"></script>
	<link href="<spring:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" />
	<link href="<spring:url value="/resources/css/style.css"/>" rel="stylesheet" />
	<title>
		<tiles:getAsString name="title" />
	</title>
</head>
<body>
	<div class="wrapper">
		<%-- <tiles:insertAttribute name="header" /> --%>
		<tiles:insertAttribute name="body" />
		<%-- <tiles:insertAttribute name="footer" /> --%>
	</div>
	<script src="<spring:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>
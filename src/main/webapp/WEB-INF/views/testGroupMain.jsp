<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>
	Hello testGroupMain !
</h1>
	<!-- ���� �̸��� ��� ��� �������� ����?? -->
	<form action="<c:url value='/fileUpload2'/>" id="fileUpload" name="fileUpload" method="post" enctype="multipart/form-data">

		<input type="file" name="testFile" required="required">		
		<input type="submit" value="�ۼ�">
	</form>
	
	<!-- �׷� ���� ���� ���� -->
	<c:if test="${fn:length(sharing_list) > 0}"> 
		<c:forEach items="${sharing_list}" var="list">
		${list}<br/>
		</c:forEach>
	</c:if>
	

</body>
</html>
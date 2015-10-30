<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.failure" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	
	<%@ include file="/WEB-INF/views/header.jsp"%>
	
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-12" role="main">
				<div class="jumbotron error">
					<h1><fmt:message key="label.failure" /></h1>
					<p><fmt:message key="label.message.failure" /></p>
					
					<ul class="list-group">
					  <li class="list-group-item"><fmt:message key="label.transId" /><span class="badge">${transId}</span></li>
					  <li class="list-group-item"><fmt:message key="label.transRef" /><span class="badge">${transRef}</span></li>
					  <li class="list-group-item"><fmt:message key="label.email" /><span class="badge">${email}</span></li>
					  <li class="list-group-item"><fmt:message key="label.amount" /><span class="badge">${amount}</span></li>
					  <li class="list-group-item"><fmt:message key="label.currency" /><span class="badge">${currency}</span></li>
					  <li class="list-group-item"><fmt:message key="label.message" /><span class="badge">${message}</span></li>
					  <li class="list-group-item"><fmt:message key="label.product" /><span class="badge">${product}</span></li>
					  <li class="list-group-item"><fmt:message key="label.key" /><span class="badge">${key}</span></li>
					  <li class="list-group-item"><fmt:message key="label.testTrans" /><span class="badge">${test}</span></li>
					  <li class="list-group-item"><fmt:message key="label.product" /><span class="badge">${product}</span></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-actions floatRight">
					<a href="<c:url value='/main' />">Go to init</a>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>

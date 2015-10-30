<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.paymentSystem" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	<fmt:message key="label.login" var="login" />
	<%@ include file="/WEB-INF/views/header.jsp"%>
		<form:form method="POST" action="/login" modelAttribute="userBean" role="form" data-toggle="validator">
			<div class="row">
				<div class="col-md-6">
				</div>
				<div class="col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title"><spring:message code="label.login"/></h3>
						</div>
						<div class="panel-body">
				
							<div class="form-group">
								<label class="control-lable" for=userName><spring:message code="label.user" /></label>
								<form:input type="text" path="userName" id="userName" class="form-control input-sm" placeholder="${userName}" />
								<div class="has-error">
									<form:errors path="userName" class="help-inline" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-lable" for="password"><spring:message code="label.password" /></label>
								<form:input type="text" path="password" id="password" class="form-control input-sm" placeholder="${password}" />
								<div class="has-error">
									<form:errors path="password" class="help-inline" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="form-actions floatRight">
						<input type="submit" value="${login}" class="btn btn-primary btn-sm" />
					</div>
				</div>
			</div>
		</form:form>
	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>
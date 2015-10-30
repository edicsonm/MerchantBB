<%@ include file="/WEB-INF/views/include.jsp"%>

<%@ page import="java.util.Map.Entry"%>
<%@ page import="java.util.Enumeration"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.hostedSale" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>

	<fmt:message key="description.merchant" var="merchant" />
	<fmt:message key="description.site" var="site" />
	<fmt:message key="description.schedule" var="schedule" />
	<fmt:message key="description.amount" var="amount" />
	<fmt:message key="description.currency" var="currency" />
	<fmt:message key="description.transactionReference" var="transactionReference" />
	<fmt:message key="description.product" var="product" />
	<fmt:message key="description.paymentType" var="paymentType" />
	<fmt:message key="description.attemptMode" var="attemptMode" />
	<fmt:message key="description.attemptMode" var="attemptMode" />
	<fmt:message key="description.testTrans" var="testTrans" />

	<fmt:message key="description.email" var="email" />
	<fmt:message key="description.firstName" var="firstName" />
	<fmt:message key="description.lastName" var="lastName" />
	<fmt:message key="description.dayOfBirth" var="dayOfBirth" />
	<fmt:message key="description.address1" var="address1" />
	<fmt:message key="description.address2" var="address2" />
	<fmt:message key="description.city" var="city" />
	<fmt:message key="description.state" var="state" />
	<fmt:message key="description.postcode" var="postcode" />
	<fmt:message key="description.country" var="country" />
	<fmt:message key="description.phone" var="phone" />
	<fmt:message key="description.fax" var="fax" />
	<fmt:message key="description.mobile" var="mobile" />

	<%@ include file="/WEB-INF/views/header.jsp"%>
	<!-- <div class="container bs-docs-container" role="main"> -->
		<form:form method="POST" action="/sendPayment" modelAttribute="payment" role="form" data-toggle="validator">
			<div class="row">
				
				<div class="col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title"><spring:message code="label.paymentInformacion"/></h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label class="control-lable" for="merchant"><spring:message code="label.merchant" /></label>
								<form:input type="text" path="merchant" id="merchant" class="form-control input-sm" placeholder="${merchant}" />
								<div class="has-error">
									<form:errors path="merchant" class="help-inline" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-lable" for="site"><spring:message
										code="label.site" /></label>
								<form:input type="text" path="site" id="site"
									class="form-control input-sm" placeholder="${site}" />
								<div class="has-error">
									<form:errors path="site" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="schedule"><spring:message
										code="label.schedule" /></label>
								<form:input type="text" path="schedule" id="schedule"
									class="form-control input-sm" placeholder="${schedule}" />
								<div class="has-error">
									<form:errors path="schedule" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="amount"><spring:message
										code="label.amount" /></label>
								<form:input type="text" path="amount" id="amount"
									class="form-control input-sm" placeholder="${amount}" />
								<div class="has-error">
									<form:errors path="amount" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="currency"><spring:message
										code="label.currency" /></label>
								<form:input type="text" path="currency" id="currency"
									class="form-control input-sm" placeholder="${currency}" />
								<div class="has-error">
									<form:errors path="currency" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="transactionReference"><spring:message code="label.transactionReference" /></label>
								<form:input type="text" path="transactionReference" id="transactionReference" class="form-control input-sm" placeholder="${transactionReference}" />
								<div class="has-error">
									<form:errors path="transactionReference" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="product"><spring:message code="label.product" /></label>
								<form:input type="text" path="product" id="product" class="form-control input-sm" placeholder="${product}" />
								<div class="has-error">
									<form:errors path="product" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="paymentType"><spring:message code="label.paymentType" /></label>
								
								<form:select path="paymentType" items="${paymentTypeList}" cssClass="form-control" />
								
								<div class="has-error">
									<form:errors path="paymentType" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="attemptMode"><spring:message code="label.attemptMode" /></label>
								<form:select path="attemptMode" items="${attemptModeList}" cssClass="form-control" />
								<div class="has-error">
									<form:errors path="attemptMode" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="testTrans"><spring:message code="label.testTrans" /></label>
								<form:select path="testTrans" items="${testTransList}"  cssClass="form-control"/>
								<div class="has-error">
									<form:errors path="testTrans" class="help-inline" />
								</div>
							</div>
							
						</div>
						
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title"><spring:message code="label.clientInformation"/></h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<label class="control-lable" for="email"><spring:message
										code="label.email" /></label>
								<form:input type="text" path="customerEntity.email" id="email"
									class="form-control input-sm" placeholder="${email}" />
								<div class="has-error">
									<form:errors path="customerEntity.email" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="firstName"><spring:message
										code="label.firstName" /></label>
								<form:input type="text" path="customerEntity.firstName" id="firstName"
									class="form-control input-sm" placeholder="${firstName}" />
								<div class="has-error">
									<form:errors path="customerEntity.firstName" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="lastName"><spring:message
										code="label.lastName" /></label>
								<form:input type="text" path="customerEntity.lastName" id="lastName"
									class="form-control input-sm" placeholder="${lastName}" />
								<div class="has-error">
									<form:errors path="customerEntity.lastName" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="dayOfBirth"><spring:message
										code="label.dayOfBirth" /></label>
								<form:input type="text" path="customerEntity.dayOfBirth"
									id="dayOfBirth" class="form-control input-sm"
									placeholder="${dayOfBirth}" />
								<div class="has-error">
									<form:errors path="customerEntity.dayOfBirth" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="address1"><spring:message
										code="label.address1" /></label>
								<form:input type="text" path="customerEntity.address1" id="address1"
									class="form-control input-sm" placeholder="${address1}" />
								<div class="has-error">
									<form:errors path="customerEntity.address1" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="address2"><spring:message
										code="label.address2" /></label>
								<form:input type="text" path="customerEntity.address2" id="address2"
									class="form-control input-sm" placeholder="${address2}" />
								<div class="has-error">
									<form:errors path="customerEntity.address2" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="city"><spring:message
										code="label.city" /></label>
								<form:input type="text" path="customerEntity.city" id="city"
									class="form-control input-sm" placeholder="${city}" />
								<div class="has-error">
									<form:errors path="customerEntity.city" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="state"><spring:message
										code="label.state" /></label>
								<form:input type="text" path="customerEntity.state" id="state"
									class="form-control input-sm" placeholder="${state}" />
								<div class="has-error">
									<form:errors path="customerEntity.state" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="postCode"><spring:message
										code="label.postCode" /></label>
								<form:input type="text" path="customerEntity.postCode" id="postCode"
									class="form-control input-sm" placeholder="${postCode}" />
								<div class="has-error">
									<form:errors path="customerEntity.postCode" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="country"><spring:message
										code="label.country" /></label>
								<form:input type="text" path="customerEntity.country" id="country"
									class="form-control input-sm" placeholder="${country}" />
								<div class="has-error">
									<form:errors path="customerEntity.country" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="phone"><spring:message
										code="label.phone" /></label>
								<form:input type="text" path="customerEntity.phone" id="phone"
									class="form-control input-sm" placeholder="${phone}" />
								<div class="has-error">
									<form:errors path="customerEntity.phone" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="fax"><spring:message
										code="label.fax" /></label>
								<form:input type="text" path="customerEntity.fax" id="fax"
									class="form-control input-sm" placeholder="${fax}" />
								<div class="has-error">
									<form:errors path="customerEntity.fax" class="help-inline" />
								</div>
							</div>
	
							<div class="form-group">
								<label class="control-lable" for="mobile"><spring:message
										code="label.mobile" /></label>
								<form:input type="text" required="" path="customerEntity.mobile"
									id="mobile" class="form-control input-sm"
									placeholder="${mobile}" />
								<div class="has-error">
									<form:errors path="customerEntity.mobile" class="help-inline" />
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="form-actions floatRight">
						<input type="submit" value="Next" class="btn btn-primary btn-sm" />
					</div>
				</div>
			</div>
		</form:form>
	<!-- </div> -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
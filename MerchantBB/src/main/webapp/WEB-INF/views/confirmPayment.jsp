<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.paymentSystem" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	
		<form:form method="POST" action="https://sales.billingbuddy.com/hosted/index/payment">
		<%-- <form:form method="POST" action="http://localhost/DummyBBPNI/"> --%>
			<div class="row">
				<div class="col-md-6" role="main">
					
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title"><spring:message code="label.transactionDetails"/></h3>
						</div>
						
						<div class="panel-body">
				
							<div class="form-group">
								<input type="hidden" name="Merchant" value="${paymentEntity.merchant}" />
								<label class="control-lable"><spring:message code="label.merchant"/></label>
								<span class="help-block">${paymentEntity.merchant}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="Site" value="${paymentEntity.site}" />
								<label class="control-lable"><spring:message code="label.site"/></label>
								<span class="help-block">${paymentEntity.site}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="Schedule" value="${paymentEntity.schedule}" />
								<label class="control-lable"><spring:message code="label.schedule"/></label>
								<span class="help-block">${paymentEntity.schedule}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="Amount" value="${paymentEntity.amount}" />
								<label class="control-lable"><spring:message code="label.amount"/></label>
								<span class="help-block">${paymentEntity.amount}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="Currency" value="${paymentEntity.currency}" />
								<label class="control-lable"><spring:message code="label.currency"/></label>
								<span class="help-block">${paymentEntity.currency}</span>
							</div>
						
							<div class="form-group">
								<input type="hidden" name="TransRef" value="${paymentEntity.transactionReference}" />
								<label class="control-lable"><spring:message code="label.transactionReference"/></label>
								<span class="help-block">${paymentEntity.transactionReference}</span>
							</div>
						
							<div class="form-group">
								<input type="hidden" name="Product" value="${paymentEntity.product}" />
								<label class="control-lable"><spring:message code="label.product"/></label>
								<span class="help-block">${paymentEntity.product}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="PaymentType" value="${paymentEntity.paymentType}" />
								<label class="control-lable"><spring:message code="label.paymentType"/></label>
								<span class="help-block">${paymentEntity.paymentType}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="AttemptMode" value="${paymentEntity.attemptMode}" />
								<label class="control-lable"><spring:message code="label.attemptMode"/></label>
								<span class="help-block">${paymentEntity.attemptMode}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="TestTrans" value="${paymentEntity.testTrans}" />
								<label class="control-lable"><spring:message code="label.testTrans"/></label>
								<span class="help-block">${paymentEntity.testTrans}</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6" role="main">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title"><spring:message code="label.transactionDetails"/></h3>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<input type="hidden" name="customer[email]" value="${paymentEntity.customerEntity.email}" />
								<label class="control-lable"><spring:message code="label.email"/></label>
								<span class="help-block">${paymentEntity.customerEntity.email}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[first_name]" value="${paymentEntity.customerEntity.firstName}" />
								<label class="control-lable"><spring:message code="label.firstName"/></label>
								<span class="help-block">${paymentEntity.customerEntity.firstName}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[last_name]" value="${paymentEntity.customerEntity.lastName}" />
								<label class="control-lable"><spring:message code="label.lastName"/></label>
								<span class="help-block">${paymentEntity.customerEntity.lastName}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[dob]" value="${paymentEntity.customerEntity.dayOfBirth}" />
								<label class="control-lable"><spring:message code="label.dayOfBirth"/></label>
								<span class="help-block">${paymentEntity.customerEntity.dayOfBirth}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[address1]" value="${paymentEntity.customerEntity.address1}" />
								<label class="control-lable"><spring:message code="label.address1"/></label>
								<span class="help-block">${paymentEntity.customerEntity.address1}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[address2]" value="${paymentEntity.customerEntity.address2}" />
								<label class="control-lable"><spring:message code="label.address2"/></label>
								<span class="help-block">${paymentEntity.customerEntity.address2}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[city]" value="${paymentEntity.customerEntity.city}" />
								<label class="control-lable"><spring:message code="label.city"/></label>
								<span class="help-block">${paymentEntity.customerEntity.city}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[state]" value="${paymentEntity.customerEntity.state}" />
								<label class="control-lable"><spring:message code="label.state"/></label>
								<span class="help-block">${paymentEntity.customerEntity.state}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[postcode]" value="${paymentEntity.customerEntity.postCode}" />
								<label class="control-lable"><spring:message code="label.postCode"/></label>
								<span class="help-block">${paymentEntity.customerEntity.postCode}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[country]" value="${paymentEntity.customerEntity.country}" />
								<label class="control-lable"><spring:message code="label.country"/></label>
								<span class="help-block">${paymentEntity.customerEntity.country}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[phone]" value="${paymentEntity.customerEntity.phone}" />
								<label class="control-lable"><spring:message code="label.phone"/></label>
								<span class="help-block">${paymentEntity.customerEntity.phone}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[fax]" value="${paymentEntity.customerEntity.fax}" />
								<label class="control-lable"><spring:message code="label.fax"/></label>
								<span class="help-block">${paymentEntity.customerEntity.fax}</span>
							</div>
							
							<div class="form-group">
								<input type="hidden" name="customer[mobile]" value="${paymentEntity.customerEntity.mobile}" />
								<label class="control-lable"><spring:message code="label.mobile"/></label>
								<span class="help-block">${paymentEntity.customerEntity.mobile}</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="form-actions floatRight">
							<input type="submit" value="Pay" class="btn btn-primary btn-sm" /> or <a href="<c:url value='/fillPayment' />">Cancel</a>
						</div>
					</div>
				</div>
				
			</div>
		</form:form>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
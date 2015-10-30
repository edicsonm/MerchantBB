<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.main" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title"><spring:message code="label.title.listPayments"/></h3>
		</div>
		<div class="panel-body">
	          <table class="table table-striped">
	            <thead>
	              <tr>
	                <th>#</th>
	                <th><spring:message code="label.title.listPayments"/></th>
	                <th><spring:message code="label.transactionReference"/></th>
	                <th><spring:message code="label.amount"/></th>
	                <th><spring:message code="label.currency"/></th>
	                <th><spring:message code="label.status"/></th>
	                <th><spring:message code="label.email"/></th>
	                <th><spring:message code="label.testTrans"/></th>
	              </tr>
	            </thead>
	            <tbody>
	              	<c:forEach var="postBackEntity" items="${listPayments}">
		              	<tr>
		              		<td>#</td>
		              		<td>${postBackEntity.transId}</td>
		              		<td>${postBackEntity.transRef}</td>
		              		<td>${postBackEntity.amount}</td>
		              		<td>${postBackEntity.currency}</td>
		              		<td>${postBackEntity.status}</td>
		              		<td>${postBackEntity.email}</td>
		              		<td>${postBackEntity.test}</td>
		              	</tr>
	              	</c:forEach>
	              </tbody>
	          </table>
	        
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>
</html>

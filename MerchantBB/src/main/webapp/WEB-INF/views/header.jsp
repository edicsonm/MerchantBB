<%@ include file="/WEB-INF/views/include.jsp"%>

<%-- <security:authorize access="isAuthenticated()"> 
	Welcome <security:authentication property="principal.username" /> 
</security:authorize> --%>
<body id="page-top" class="index">
<header role="banner" class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
  <div class="container">
    <div class="navbar-header">
      <button aria-expanded="false" aria-controls="bs-navbar" data-target="#bs-navbar" data-toggle="collapse" type="button" class="navbar-toggle collapsed">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
       <%-- <a class="navbar-brand" href="/main"><spring:message code="label.title.paymentSystem" /></a> --%>
		<a class="navbar-brand" rel="home" href="#" title="Buy Sell Rent Everyting">
       		<img style="max-width:100px; margin-top: -40px;" src="<c:url value="/resources/images/Logo.png" />">
    	</a>
    </div>
    <nav class="collapse navbar-collapse" id="bs-navbar">
    
    	<security:authorize access="isAuthenticated()"> 
    		<ul class="nav navbar-nav">
	        <li>
	          <a href="/hostedSale"><spring:message code="label.title.hostedSales" /></a>
	        </li>
	        <%-- <li>
	          <a href="/postBack"><spring:message code="label.title.postBackTransactions" /></a>
	        </li> --%>
	        <li>
	          <a href="/listPayments"><spring:message code="label.title.listPayments" /></a>
	        </li>
	      </ul>
    	</security:authorize>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://www.billingbuddy.com"><spring:message code="label.title.gotobillingbuddy" /></a></li>
		<security:authorize access="isAuthenticated()">
			<li><a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a></li>
		</security:authorize>
      </ul>
    </nav>
  </div>
</header>

<div id="content" class="bs-header">
	<div class="container">
		<p>A simple and user-friendly way to test transacctions</p>
	</div>
</div>

<div class="container bs-docs-container" role="main">
	<div class="container">
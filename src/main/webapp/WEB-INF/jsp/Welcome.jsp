<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}
.menu {
	display: flex;
	justify-content: space-around;
}
li {
	hover: none;
}
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 50%;
	margin: 0 auto;
}

</style> 
<meta charset="ISO-8859-1">
<title>W O W</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/footer-distributed-with-address-and-phones.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<link href="<c:url value="/resources/css/HomePage.css" />"
	rel="stylesheet">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
	
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body  bgcolor="#000000">


	
			 
					
		</div>
     	</div>
	</nav>

	<div class="container">
 <style>
p {
	color: Black;
}
</style>

			<nav>
			<ul class="w3-navbar w3-grey w3-card-2" style="opacity: 0.9">
				<li><a href="" class="w3-hover-none"><i class="glyphicon glyphicon-home">  ECOMMERCE   </i></a></li>
				<c:choose>
					<c:when test="${LoggedIn}">
                       <li style="float: right"><a href="perform_logout"
							class="w3-hover-none">Logout</i></a></li>
						<c:choose>	
						<c:when test="${!Administrator}">	
						<br><li style="float: right"><a href="viewcart"
							class="w3-hover-none">ViewCart<i class="fa fa-shopping-cart"></i>(${cartsize})</a></li>
						</c:when>
						</c:choose>

						<li style="float: right"><a href="#" class="w3-hover-none"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>
				<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none">SignUp</i></a></li>
						<li style="float: right"><a href="login"
							class="w3-hover-none">LogIn</i></a></li>
					</c:otherwise>
				</c:choose>
			</ul>	
			
		
			
	<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
				<div>
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 70%; margin-left: 15%; margin-top:-2px;">
						<c:forEach items="${categoryList}" var="category">
							<li><a href="view/${category.id}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
						
					</ul>
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<ul class="w3-navbar w3-light-lightblue w3-round w3-small menu w3-card-4 " 
			Style="width: 70%; margin-left: 15%; margin-top:-2px;">
				<li><a href="product"class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="fa fa-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
			<c:choose>
			<c:when test="${ProductPageClicked}">
			<body style="padding-top:">
				<c:import url="/WEB-INF/jsp/AdminProduct.jsp"></c:import>
			</c:when>
		</c:choose>
		</c:when>
	</c:choose>		
	
				 
	
	</div>
	
	<!-- Category List End -->
	
	<c:choose>
	<c:when test="${IfViewCartClicked}">
		<c:import url="/WEB-INF/jsp/Cart.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IndividualItemClicked}">
			<c:import url="/WEB-INF/jsp/IndividualItem.jsp">
			</c:import>
		</c:when>
	
	<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/jsp/Payment.jsp">
			</c:import>
	</c:when>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/jsp/Login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/jsp/Register.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${ViewCategoryClicked}">
			<c:import url="/WEB-INF/jsp/viewitem.jsp">
			</c:import>
		</c:when>
	
	
	</c:choose>

	<%-- <c:choose>
			<c:when test="${ProductPageClicked}">
			<body style="padding-top:">
				<c:import url="/WEB-INF/jsp/AdminProduct.jsp"></c:import>
			</c:when>
		</c:choose> --%>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
			<body style="padding-top:">
				<c:import url="/WEB-INF/jsp/AdminCategory.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
			<body style="padding-top:">
				<c:import url="/WEB-INF/jsp/AdminSupplier.jsp"></c:import>
			</c:when>
		</c:choose>
	
	<!-- carousel -->
<br>	<c:choose>	

      <%-- <c:when test="${HideOthers1}"> --%>
      
		<c:when test="${!Administrator}">
		<c:if test="${empty HideOthers}">
		<div class="container-fluid">
  <br>
  <br>
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

   
    <div class="carousel-inner" role="listbox">
    
      
      <div class="item active">
        <img src="<c:url value="/resources/images/analog2.jpg"/>" alt="no image" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/img33.jpg"/>" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/images/img22.jpg"/>" width="460" height="345">
      </div>
      
      
      
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div><br><br>
<br>
</c:if>
</c:when>

</c:choose>

			
	
	<!-- Corousel End -->
	
	<!-- Product List-->
	<c:if test="${empty HideOthers}">
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<!-- <ul> -->
						<div class="row w3-card-8 w3-white" style="margin-bottom: 0px">
							<br>
							<c:forEach items="${productList}" var="product">
								<div class="col-xs-2 ">
									<div class="thumbnail">
										<img height="450px" width="450px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="caption">
											<p>
												${product.name}<br> <i class =" fa fa-inr" aria-hidden="true"></i>  ${product.price}
												<c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
														
													     <input type="number" value="1" name="quantity"
																class="btn-xs col-1 btn-grey "> <input
																type="submit" value="AddtoCart"
																class="btn-xs col-1 btn-grey">
														</form>
														</form>
													</c:when>
												</c:choose>
											</p>

										</div>
									</div>
								</div>

								
							</c:forEach>
						</div>
						<!-- </ul> -->
					</div>
				</c:if>
			</c:when>
		</c:choose>
	</c:if>
	 
	<!-- Product List End -->
	
	
	 <pre><center> Like us at : <a href="https://facebook.com/"><img src="<c:url value="resources/images/facebook.png"/>"></a>
 Follow us at : <a href="https://instagram.com/"><img src="<c:url value="resources/images/instagram.png"/>"></a> and <a href="http://twitter.com/"><img src="<c:url value="resources/images/twitter.png"/>"></a>
                                                                <a href="jsp\contactus.jsp">
    <span class="glyphicon glyphicon-earphone"></span>Contactus</a>    <a href="jsp\aboutus.jsp">About us</a>
    </center></pre></nav>
	
	

	
	
</body>
</html>

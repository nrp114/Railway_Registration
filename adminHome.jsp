<!-- Dhwani shah - dvs48 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation System</title>
<style>
#header {
    background-color:#A7C253;
    color:white;
    text-align:center;
    padding:6px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:450px;
    width:200px;
    float:left;
    padding:5px;	      
}
#section {
    width:800px;
    float:left;
    padding:50px;	 	 
}
</style> 
</head>
<body>
<form>
	<div id="header">
	<h1>Train Ticket Reservation System</h1>
	</div>
	<div id="dvs48">
	<a href="AdminAdd.html">Admin add data For Customers</a><br>
	 <a href="AdminEdit.html">Admin Edit data For Customers</a><br>
	  <a href="AdminDelete.html">Admin Delete data For Customers</a><br>
	   <a href="SalesReport.jsp">Sales Report for particular month</a><br>
	<a href="ReservationTrain.html">Reservation list By train id and transit line name</a><br>
	<a href="ReservationCustomer.html"> Reservation list by Customer name</a><br>
	<a href="RevenueGenerate.jsp">Revenue Generated By transit line, destination city, and customer name</a><br>
	<a href="BestCustomer.jsp">Best customer</a><br>
	<a href="ActiveTransitline.jsp">5 most active transit lines</a><br>
	
	</div>
</form>
</body>
</html>
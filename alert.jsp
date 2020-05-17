<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="cs336LoginPage.*"%>
<%@ page
	import="java.io.*,java.util.*,java.sql.*,java.time.format.DateTimeFormatter,java.time.LocalDateTime, java.text.SimpleDateFormat, java.util.Date, java.util.Calendar, java.text.ParseException"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alert</title>
</head>
<body>
	<%
		ResultSet diff = null;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try{
			ApplicationDB db = new ApplicationDB();
			Connection connection = db.getConnection();
			Statement stmt = connection.createStatement();
			String line1 = "SET SQL_SAFE_UPDATES=0";
			stmt.executeUpdate(line1);
			Statement stmt2 = connection.createStatement();
			String line2 = "update Train_Schedule t set delay_diff = timediff(t.station_departure_time,  t.station_arrival_time)";
			stmt2.executeUpdate(line2);
			Statement stmt3 = connection.createStatement();
			String line3 = "SET SQL_SAFE_UPDATES=1";
			stmt3.executeUpdate(line3);
			Statement stmt4 = connection.createStatement();
			String q = "select trainId , station_arrival_time , stationId from Train_Schedule where delay_diff > '00:02:00'";
			diff = stmt3.executeQuery(q);
			//diff = stmt.executeQuery(q);
		}catch(Exception e){
			e.printStackTrace();
			out.println("Error " + e.getMessage());
		}
	%>
	<table BORDER="1" id="table">
	<tr>
		<th>Train ID</th>
		<th>Arrival Time</th>
		<th>Station ID</th>
	</tr>
	
	</table>
	<form method="post" action="welcome.jsp">
		<input type="hidden" id="username" name="username"
			value="<%=username%>"> <input type="hidden" id="password"
			name="password" value="<%=password%>"> <input type="hidden"
			id="opt" name="click" value="<%="Sign In"%>">
		<button type="submit"
			style="font-size: 20px; cursor: pointer; background-color: powderblue; margin-left: auto; margin-right: auto; display: block; margin-top: 1%; margin-bottom: 0%">
			Home</button>
	</form>
</body>
</html>
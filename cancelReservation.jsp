<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="cs336LoginPage.*"%>
<%@ page
	import="java.io.*,java.util.*,java.sql.*,java.time.format.DateTimeFormatter,java.time.LocalDateTime, java.text.SimpleDateFormat, java.util.Date, java.util.Calendar, java.text.ParseException"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel Reservation</title>
</head>
<body>
<%
		String res_id = request.getParameter("res_id");
		try {
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement("DELETE FROM Reservation WHERE res_id = ?");
			stmt.setInt(1, Integer.parseInt(res_id));
			stmt.executeUpdate();
			out.println("Your reservation is cancelled. (Reservation Id: " + res_id);
		}catch(Exception e){
			e.printStackTrace();
			out.println("Error " + e.getMessage());
		}
%>
<form method="post" action="reservationDetails.jsp">
		<input type="hidden" id="username" name="username"
			value="<%=request.getParameter("username")%>">
		<input type="hidden" id="password" name="password"
			value="<%=request.getParameter("password")%>">
		<button type="submit">Back To Reservation List</button>
</form>
</body>
</html>

<%@ page import ="java.sql.*" %>
<%
String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test100",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd +"'");
session.setAttribute("userid", userid);
//out.println("welcome " + userid); and confirmpass='"+ conpwd +"'");
if (rs.next()) {
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("index1.jsp");
} else {
out.println("Please enter the correct password<br> <a href='index.jsp'>try again</a>");
}
%>
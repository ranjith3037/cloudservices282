
<%@page import=" java.sql.Connection" %>
<%@page import=" java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.math.*" %>
<%@page import="java.text.DecimalFormat" %>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%String s2=""; %>
<html >
  <head>
    
<meta charset="UTF-8">
  
  <title>Employee login screen</title>
    
    
    
    
      
  <link rel="stylesheet" href="css/style.css">
  <link href="form/css" rel="stylesheet" type="text/css" />
  <link href="form/html" rel="htmlsheet" type="text/html" />
  <link href="form/js" rel="jssheet" type="text/js"/>

  





   </head>

  
<body background="http://www.beautycolorcode.com/50a3a2.png">

   
 <div class="wrapper">
	
<div class="container">
		
<h1>Welcome Employee</h1>
		
		HttpSession s1=request.getSession();
		s2=(String)s1.getAttribute("username");
		
		<%
		Class.forName("com.mysql.jdbc.Driver");
		 String url = "jdbc:mysql://us-cdbr-azure-west-c.cloudapp.net:3306/acsm_90810a19358144c?useSSL=false";
		 String username = "b475de1c4476f1";
		String password = "a5706aa1";
		String query="select * from employees where email!=?";
		int totalemp=0,totalprod=0,totalcust=0,totalord=0;
		int total=0;
		Connection conn=DriverManager.getConnection(url,username,password);
		PreparedStatement stmt=conn.prepareStatement("select * from employees where email!=?");
		stmt.setString(1,s2);
		ResultSet rs=stmt.executeQuery();
		while(rs.next()){%>
		
		<c:out value=<%=rs.getString(1) %>></c:out>
		<c:out value=<%=rs.getString(2) %>></c:out>
		<c:out value=<%=rs.getString(3) %>></c:out>
		<c:out value=<%=rs.getString(4) %>></c:out>
		<c:out value=<%=rs.getString(5) %>></c:out>
		<c:out value=<%=rs.getString(7) %>></c:out>
		<c:out value=<%=rs.getString(8) %>></c:out>
		<c:out value=<%=rs.getString(9) %>></c:out>
		
		<%	
		}
		%>

	</div>
	
	
<ul class="bg-bubbles">
		
<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>

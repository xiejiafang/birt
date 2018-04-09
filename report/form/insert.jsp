<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
	<head>
		<title>insert</title>
	</head>

	<body>
		<sql:setDataSource 
			var="snapshot" 
			driver="com.ibm.db2.jcc.DB2Driver" 
			url="jdbc:db2://10.19.19.34:50000/hnii" 
			user="report"  
			password="okm123" 
		/>

		 
		 
		<sql:update dataSource="${snapshot}" var="result">
			insert into info.test values('你好','JSTL')
		</sql:update>
	</body>
</html>

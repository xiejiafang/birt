<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
<c:set var="loc" value="zh"/>
 
<sql:setDataSource var="snapshot" driver="com.ibm.db2.jcc.DB2Driver"
     url="jdbc:db2://10.19.19.34:50000/hnii"
     user="report"  password="okm123" />
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from administrator.hn_branch
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>Age</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.branch}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.branch}"/></td>
   <td><c:out value="${row.name}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>

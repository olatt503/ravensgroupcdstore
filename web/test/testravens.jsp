<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/RavensDB">
select * from CD;
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
     ${row.cdid}<br/>
     ${row.title}<br/>
     ${row.price}<br/>
     ${row.category}<br/>
</c:forEach>
     <sql:query var="result" dataSource="jdbc/RavensDB">
         SELECT * FROM CD
     </sql:query>
    
     <table border="1">
         <!-- column headers -->
         <tr>
             <c:forEach var="columnName" items="${result.columnNames}">
                 <th><c:out value="${columnName}"/></th>
                 </c:forEach>
         </tr>
         <!-- column data -->
         <c:forEach var="row" items="${result.rowsByIndex}">
             <tr>
                 <c:forEach var="column" items="${row}">
                     <td><c:out value="${column}"/></td>
                 </c:forEach>
             </tr>
         </c:forEach>
     </table>
         <sql:query var="result" dataSource="jdbc/RavensDB">
         SELECT * FROM Address
     </sql:query>
    
     <table border="1">
         <!-- column headers -->
         <tr>
             <c:forEach var="columnName" items="${result.columnNames}">
                 <th><c:out value="${columnName}"/></th>
                 </c:forEach>
         </tr>
         <!-- column data -->
         <c:forEach var="row" items="${result.rowsByIndex}">
             <tr>
                 <c:forEach var="column" items="${row}">
                     <td><c:out value="${column}"/></td>
                 </c:forEach>
             </tr>
         </c:forEach>
     </table>
         <sql:query var="result" dataSource="jdbc/RavensDB">
         SELECT * FROM PO
     </sql:query>
    
     <table border="1">
         <!-- column headers -->
         <tr>
             <c:forEach var="columnName" items="${result.columnNames}">
                 <th><c:out value="${columnName}"/></th>
                 </c:forEach>
         </tr>
         <!-- column data -->
         <c:forEach var="row" items="${result.rowsByIndex}">
             <tr>
                 <c:forEach var="column" items="${row}">
                     <td><c:out value="${column}"/></td>
                 </c:forEach>
             </tr>
         </c:forEach>
     </table>
         <sql:query var="result" dataSource="jdbc/RavensDB">
         SELECT * FROM POItem
     </sql:query>
    
     <table border="1">
         <!-- column headers -->
         <tr>
             <c:forEach var="columnName" items="${result.columnNames}">
                 <th><c:out value="${columnName}"/></th>
                 </c:forEach>
         </tr>
         <!-- column data -->
         <c:forEach var="row" items="${result.rowsByIndex}">
             <tr>
                 <c:forEach var="column" items="${row}">
                     <td><c:out value="${column}"/></td>
                 </c:forEach>
             </tr>
         </c:forEach>
     </table>
         <sql:query var="result" dataSource="jdbc/RavensDB">
         SELECT * FROM VisitEvent
     </sql:query>
    
     <table border="1">
         <!-- column headers -->
         <tr>
             <c:forEach var="columnName" items="${result.columnNames}">
                 <th><c:out value="${columnName}"/></th>
                 </c:forEach>
         </tr>
         <!-- column data -->
         <c:forEach var="row" items="${result.rowsByIndex}">
             <tr>
                 <c:forEach var="column" items="${row}">
                     <td><c:out value="${column}"/></td>
                 </c:forEach>
             </tr>
         </c:forEach>
     </table>
  </body>
</html>

	
	
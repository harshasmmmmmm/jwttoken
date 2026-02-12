<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<h3>Student List</h3>

<table class="table table-bordered table-striped shadow">

<tr class="table-dark">
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Address</th>
<th>Actions</th>
</tr>

<c:forEach items="${list}" var="s">

<tr>
<td>${s.id}</td>
<td>${s.fullname}</td>
<td>${s.email}</td>
<td>${s.address}</td>

<td>
<a href="profileedit?id=${s.id}" class="btn btn-warning btn-sm">Edit</a>

<a href="delete?id=${s.id}"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete student?')">
Delete
</a>
</td>

</tr>

</c:forEach>

</table>

<%@ include file="footer.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<h3>Student List</h3>

<table class="table table-bordered table-striped shadow">

<tr class="table-dark">
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Address</th>
<th>Actions</th>
</tr>

<c:forEach items="${list}" var="s">

<tr>
<td>${s.id}</td>
<td>${s.fullname}</td>
<td>${s.email}</td>
<td>${s.address}</td>

<td>
<a href="profileedit?id=${s.id}" class="btn btn-warning btn-sm">Edit</a>

<a href="delete?id=${s.id}"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete student?')">
Delete
</a>
</td>

</tr>

</c:forEach>

</table>

<%@ include file="footer.jsp" %>

<%@ include file="header.jsp" %>

<h3>Edit Profile</h3>

<form action="saveprofile" method="post" class="card p-4 shadow">

<input type="hidden" name="id" value="${student.id}">

<div class="mb-3">
<label>Name</label>
<input type="text" name="fullname" value="${student.fullname}" class="form-control">
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" name="email" value="${student.email}" class="form-control">
</div>

<div class="mb-3">
<label>Password</label>
<input type="text" name="password" value="${student.password}" class="form-control">
</div>

<div class="mb-3">
<label>Address</label>
<textarea name="address" class="form-control">${student.address}</textarea>
</div>

<button class="btn btn-primary w-100">Update</button>

</form>

<%@ include file="footer.jsp" %>

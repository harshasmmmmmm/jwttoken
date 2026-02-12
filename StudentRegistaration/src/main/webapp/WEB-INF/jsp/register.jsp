<%@ include file="header.jsp" %>

<h3 class="mb-3">Student Registration</h3>

<form action="saveform" method="post" class="card p-4 shadow">

<div class="mb-3">
<label>Full Name</label>
<input type="text" name="fullname" class="form-control" required>
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" name="email" class="form-control" required>
</div>

<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control" required>
</div>

<div class="mb-3">
<label>Address</label>
<textarea name="address" class="form-control"></textarea>
</div>

<button class="btn btn-primary w-100">Register</button>

</form>

<%@ include file="footer.jsp" %>

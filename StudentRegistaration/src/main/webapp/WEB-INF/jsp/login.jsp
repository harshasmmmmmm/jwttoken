<%@ include file="header.jsp" %>

<div class="row justify-content-center">

<div class="col-md-5">

<h3 class="text-center mb-3">Login</h3>

<form action="logincheck" method="post" class="card p-4 shadow">

<div class="mb-3">
<label>Email</label>
<input type="email" name="email" class="form-control">
</div>

<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control">
</div>

<button class="btn btn-success w-100">Login</button>

</form>

</div>
</div>

<%@ include file="footer.jsp" %>

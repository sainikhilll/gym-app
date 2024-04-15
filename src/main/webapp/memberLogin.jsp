<%@ include file="head.jsp"%>
<div class="row">
    <div class="col-md-6">
        <img src="login.jpg" class="img-fluid" alt="Image">
    </div>
    <div class="col-md-6">
        <div class="row justify-content-center align-items-center mt-5 pt-5">
            <div class="col-md-8">
                <div class="card p-3 pt-5">
                    <div class="text-center h4">Login</div>
                    <form action="member" method="post">
                        <div class="form-floating mb-3 mt-3">
                            <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>
                            <label for="email">Email</label>
                        </div>
                        <div class="form-floating mb-3 mt-3">
                            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                            <label for="password">Password</label>
                        </div>
                        <div>
                            <input type="submit" class="btn btn-primary w-100" value="Login">
                        </div>
                        <div class="mt-3">
                            <a href="memberRegistration.jsp">New Here? Click to Register</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

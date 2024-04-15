<%@ include file="head.jsp"%>
<div class="row">
	<div class="col-md-6 mt-5 pt-5">
		<div class=" p-3 mt-5 pt-5 ms-2">
			<div class="text-center h4 text-grey">Let's fill this up!</div>
			<form action="member" method="get">
			<div class="row">
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-grey"> First Name</label>
						<input type="text" name="first_name" class="form-control"  required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Email</label>
						<input type="email" name="email" class="form-control"  required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Height</label>
						<input type="text" name="height" class="form-control" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Age</label>
						<input type="text" name="age" class="form-control" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label class="form-label text-grey"> Last Name</label>
						<input type="text" name="last_name" class="form-control" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Phone</label>
						<input type="number" name="phone" class="form-control" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Weight</label>
						<input type="text" name="weight" class="form-control" required>
					</div>
					<div class="mb-3 mt-3">
						<label class="form-label text-grey">Password</label>
						<input type="password" name="password" class="form-control" required>
					</div>
				</div>
				<div class= "col-md-5"></div>
				<div class= "col-md-5 ms-4">
					<input type="submit"  class="btn btn-secondary w-30" value="Signup">
				</div>
				<div class= "col-md-2"></div>
			</div>
			</form>
		</div>
	</div>
	<div class="col-md-6">
       <img src="registration.jpg" class="img-fluid" alt="Image">
    </div>
</div>
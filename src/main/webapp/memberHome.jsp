<%@ include file="memberHead.jsp" %>

<style>
    .centered-text {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
        text-align: center; }


    .centered-text a {
        position: absolute;
        top: 50%; /* Place the top of the link at the vertical center */
        left: 70%; /* Place the left side of the link at the horizontal center */
        transform: translate(-50%, -50%); /* Move the link back by half of its own width and height */
        font-size: 50px; /* Adjust font size as needed */
    }
</style>


<div class="row">
       <div class="col-md-6">
            <img src="memberhome.jpg" class="img-fluid" alt="Image">
       </div>
       <div class="col-md-6 centered-text text-decoration-none">
            <a href="memberProfile.jsp">Schedule Class now!</a>
       </div>

</div>

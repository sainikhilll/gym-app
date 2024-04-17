<%@ page import="service.ClassEnrollmentService" %>
<%@ page import="model.ClassEnrollment" %>
<%@ page import="java.util.List" %>
<%@ include file="links.jsp" %>
<%@ include file="memberHead.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
    <title>Classes</title>
    <style>
        .card-img-top {
            max-height: 200px; /* Adjust the height as needed */
            object-fit: cover; /* Maintain aspect ratio */
        }
        .card {
            height: 90%; /* Set a fixed height for all cards */
        }
        .card-body {
            height: 90%; /* Ensure card body fills the entire height of the card */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <%
                ClassEnrollmentService classEnrollmentService = new ClassEnrollmentService();
                String member_Id = (String)session.getAttribute("member_Id");
                List<ClassEnrollment> classes = classEnrollmentService.getEnrolledClasses(member_Id);
                if(classes.size() != 0){
            %>
            <div class="fs-1 fw-bold mt-5">
                <h2>Your Upcoming Enrolled Classes</h2>
            </div>
            <% }
                for (ClassEnrollment cls : classes) {
                    if(cls.getStatus().equals("Confirmed")){
            %>
            <div class="col-md-6">
                <div class="card mb-3 mt-5" style="width: 35rem;">
                    <img src="<%= cls.getImage() %>" class="card-img-top" alt="Class Image">
                    <div class="card-body">
                        <h5 class="card-title"><%= cls.getClass_name() %></h5>
                        <div class="row mt-3">
                            <p class="card-text col-md-4 fw-bold"><strong><svg fill="#d86e6e" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="25px" height="25px" viewBox="0 0 224.026 224.026" xml:space="preserve" stroke="#d86e6e"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M142.84,0c0,0-11.666,0.091-11.666,9.216c0,0.316,0.426,5.456,0.426,5.456s-2.033-0.962-1.82,0.536 c0,0-0.22,6.104,2.351,6.634c0,0,0.646,5.13,2.569,6.205l0.104,5.035l-4.926,2.89c0,0-11.132-6.317-20.016,2.566 c0,0-14.127-0.204-17.558,5.468c0,0-7.599-7.076-22.045-6.004c0,0-4.926-1.815-6.211-3.428c0,0-0.749-5.243-7.603-3.522 c0,0-5.456,2.03-2.137,9.852c0,0,2.356,3.303,6.957,1.072c0,0,2.356,0.316,5.033,2.676c0,0,11.78,11.558,26.226,10.586 c0,0,4.601-0.743,9.959,1.495c0,0,9.526,3.105,14.127-2.351c0,0,0,5.992,3.964,12.203l-9.962,0.119c0,0-4.813-5.136-6.421-2.031 c0,0-7.603,2.987-4.497,5.337c0,0-0.965,2.363,0.959,3.225c0,0-0.853,1.814,1.285,2.779c0,0,0.213,3.522,7.276,1.279 c0,0,1.075-0.536,1.82-2.146c0,0,6.428,0.536,10.172,2.898c0,0-8.5,40.456-7.215,53.591c0,0-10.562,21.969-3.852,28.253 c0,0-0.433,6.577,11.847,11.277c0,0,7.143,5.14,7.849,6.576c0,0,3.714,11.558,7.709,19.553c0,0,3.142,8.562,1.711,13.134 l-8.708,5.42c0,0-8.993,1.705-11.283,5.419c0,0-1.57,4.001,8.567,1.571c0,0,13.981-2.57,17.981-1.991c0,0,8.422,2.144,6.284-5.998 c0,0-4.566-15.271-4.999-23.991c0,0,12.416,12.574,10.705,31.268c0,0-0.573,1.432,2.283,1.145c0,0,2.989,3.855,4.707-5.846 c0,0,3.428-21.269,0.426-26.847c0,0-1.857-1.851-5.998-2.131c0,0-11.989-11.283-15.844-20.703c0,0-2.855-8.415-4.28-9.706 l0.853-19.272c0,0,2.722-6.132,3.574-11.125c0,0,7.989-5.712,7.849-16.696c0,0,0.901-13.287-2.989-17.129 c-0.244-0.237-0.135-1.023-0.189-1.357c-0.219-1.118,0-1.854,2.046-4.068c0,0,0.859-0.573,1.285-4.284 c0,0,16.557-20.557,18.127-24.978c0,0,4.001-15.271-2.995-17.415c0,0-14.699-7.858-16.271-13.125l0.292-2.777 c0,0,0.707-1.495,0.707-3.778c0,0,3.136-2,2.569-6.07c0,0,0.646-3.505-1.931-1.791C152.053,14.154,154.836,0.597,142.84,0z"></path> </g> </g></svg></strong> <%= cls.getInstructor() %></p>
                            <p class="card-text col-md-4 fw-bold"><strong><svg width="25px" height="25px" viewBox="0 0 512 512" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g id="_x35_31_x2C__calender_x2C__day_x2C__love_x2C__wedding"> <g> <path d="M70.25,192.57v-31.71c0-22.521,18.25-40.78,40.77-40.78h22.65v36.25h45.31v-36.25h154.04v36.25 h45.311v-36.25h22.65c22.52,0,40.77,18.26,40.77,40.78v226.53c0,22.52-18.25,40.77-40.77,40.77H111.02 c-22.52,0-40.77-18.25-40.77-40.77V192.57z M405.51,305.38c0-12.26-9.939-22.199-22.22-22.199c-11.09,0-16.64,5.55-22.19,16.649 c-5.55-11.1-11.1-16.649-22.189-16.649c-12.25,0-22.19,9.939-22.19,22.199c0,22.19,22.19,34.82,44.38,57.021 C383.29,340.2,405.51,327.57,405.51,305.38z M314.9,373.801V355.67h-18.12v18.131H314.9z M314.9,265.061v-18.12h-18.12v18.12 H314.9z M278.65,373.801V355.67h-18.12v18.131H278.65z M278.65,301.311v-18.13h-18.12v18.13H278.65z M278.65,265.061v-18.12 h-18.12v18.12H278.65z M242.41,373.801V355.67h-18.12v18.131H242.41z M242.41,337.551v-18.12h-18.12v18.12H242.41z M242.41,301.311v-18.13h-18.12v18.13H242.41z M242.41,265.061v-18.12h-18.12v18.12H242.41z M206.16,373.801V355.67h-18.12v18.131 H206.16z M206.16,337.551v-18.12h-18.12v18.12H206.16z M206.16,301.311v-18.13h-18.12v18.13H206.16z M206.16,265.061v-18.12 h-18.12v18.12H206.16z M169.92,373.801V355.67H151.8v18.131H169.92z M169.92,337.551v-18.12H151.8v18.12H169.92z M169.92,301.311 v-18.13H151.8v18.13H169.92z M169.92,265.061v-18.12H151.8v18.12H169.92z M133.67,373.801V355.67h-18.12v18.131H133.67z M133.67,337.551v-18.12h-18.12v18.12H133.67z M133.67,301.311v-18.13h-18.12v18.13H133.67z M133.67,265.061v-18.12h-18.12v18.12 H133.67z" style="fill:#CAE8FB;"></path> <path d="M383.29,283.181c12.28,0,22.22,9.939,22.22,22.199c0,22.19-22.22,34.82-44.41,57.021 c-22.189-22.2-44.38-34.83-44.38-57.021c0-12.26,9.94-22.199,22.19-22.199c11.09,0,16.64,5.55,22.189,16.649 C366.65,288.73,372.2,283.181,383.29,283.181z" style="fill:#EF3E5C;"></path> <g> <g> <g> <path d="M329.72,312.38c0-12.26,9.94-22.199,22.19-22.199c1.141,0,2.21,0.073,3.239,0.191 c-4.072-4.783-8.959-7.191-16.239-7.191c-12.25,0-22.19,9.939-22.19,22.199c0,22.19,22.19,34.82,44.38,57.021 c0.92-0.921,1.84-1.819,2.76-2.709C345.562,343.054,329.72,331.129,329.72,312.38z" style="fill:#E42A53;"></path> </g> </g> </g> <polygon points="378.33,120.08 378.33,156.33 333.02,156.33 333.02,120.08 333.02,83.84 378.33,83.84 " style="fill:#415A6B;"></polygon> <polygon points="342.02,130.747 342.02,94.507 378.33,94.507 378.33,83.84 333.02,83.84 333.02,120.08 333.02,156.33 342.02,156.33 " style="fill:#354D5B;"></polygon> <g> <g> <g> <path d="M79.917,396.451v-194.82v-31.71c0-22.521,18.25-40.78,40.77-40.78h12.983v-9.061h-22.65 c-22.52,0-40.77,18.26-40.77,40.78v31.71v194.82c0,14.134,7.19,26.582,18.112,33.896 C83.07,414.409,79.917,405.801,79.917,396.451z" style="fill:#AACFE2;"></path> </g> </g> </g> <polygon points="178.98,120.08 178.98,156.33 133.67,156.33 133.67,120.08 133.67,83.84 178.98,83.84 " style="fill:#415A6B;"></polygon> <polygon points="142.73,130.746 142.73,94.507 178.98,94.507 178.98,83.84 133.67,83.84 133.67,120.08 133.67,156.33 142.73,156.33 " style="fill:#354D5B;"></polygon> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="296.78" y="355.67"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="296.78" y="246.94"></rect> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="260.53" y="355.67"></rect> <rect height="18.13" style="fill:#415A6B;" width="18.12" x="260.53" y="283.181"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="260.53" y="246.94"></rect> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="224.29" y="355.67"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="224.29" y="319.431"></rect> <rect height="18.13" style="fill:#415A6B;" width="18.12" x="224.29" y="283.181"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="224.29" y="246.94"></rect> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="188.04" y="355.67"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="188.04" y="319.431"></rect> <rect height="18.13" style="fill:#415A6B;" width="18.12" x="188.04" y="283.181"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="188.04" y="246.94"></rect> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="151.8" y="355.67"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="151.8" y="319.431"></rect> <rect height="18.13" style="fill:#415A6B;" width="18.12" x="151.8" y="283.181"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="151.8" y="246.94"></rect> <rect height="18.131" style="fill:#415A6B;" width="18.12" x="115.55" y="355.67"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="115.55" y="319.431"></rect> <rect height="18.13" style="fill:#415A6B;" width="18.12" x="115.55" y="283.181"></rect> <rect height="18.12" style="fill:#415A6B;" width="18.12" x="115.55" y="246.94"></rect> <path d="M360.14,197.57H79.25c-2.761,0-5-2.239-5-5c0-2.762,2.239-5,5-5h280.89c2.762,0,5,2.238,5,5 C365.14,195.331,362.901,197.57,360.14,197.57z" style="fill:#AACFE2;"></path> <path d="M405.45,197.57h-9.061c-2.762,0-5-2.239-5-5c0-2.762,2.238-5,5-5h9.061c2.762,0,5,2.238,5,5 C410.45,195.331,408.212,197.57,405.45,197.57z" style="fill:#AACFE2;"></path> </g> </g> <g id="Layer_1"></g> </g></svg></strong> <%= cls.getDateofclass().substring(0,10) %></p>
                            <p class="card-text col-md-4 fw-bold"><svg fill="#000000" height="25px" width="25px" version="1.1" id="Filled_Icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g id="Status-Approved-Filled"> <path d="M12,0C5.4,0,0,5.4,0,12s5.4,12,12,12s12-5.4,12-12S18.6,0,12,0z M9.5,18.3l-5.6-5.7l1.8-1.8l3.9,3.9l8.4-8.4l1.8,1.8 L9.5,18.3z"></path> </g> </g></svg> <%= cls.getStatus() %></p>
                        </div>
                        <form action="attend?enrollmentId=<%= cls.getEnrollment_Id() %>" method="post">
                            <input type="hidden" name="enrollment_Id" value="<%= cls.getEnrollment_Id() %>">
                            <button type="submit" class="btn btn-success mt-2">Mark Attendance</button>
                        </form>
                    </div>
                </div>
            </div>
            <% } %>
            <% } %>
        </div>
        <div>
             <div class="fs-1 fw-bold mt-5 pt-5">
                <h2>Your Activity</h2>
             </div>
            <table class="table table-dark table-striped mt-5 pt-5">
                <thead>
                    <tr>
                        <th scope="col">Workout</th>
                        <th scope="col">Date</th>
                        <th scope="col">Instructor</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(ClassEnrollment clas : classes) { %>
                    <tr>
                        <td><%= clas.getClass_name() %></td>
                        <td><%= clas.getDateofclass().substring(0,10) %></td>
                        <td><%= clas.getInstructor() %></td>
                        <td><%= clas.getStatus() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

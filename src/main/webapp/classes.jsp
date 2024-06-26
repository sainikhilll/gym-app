<%@ page import="service.ClassService" %>
<%@ page import="model.Cls" %>
<%@ page import="java.util.List" %>
<%@ include file="links.jsp" %>
<%@ include file="memberHead.jsp" %>
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

            ClassService classService = new ClassService();
            List<Cls> classes = classService.getClasses();
            for (Cls cls : classes) {
                %>
                <div class="col-md-6" >
                    <div class="card mb-3 mt-5" style="width: 35rem;">
                        <img src="<%= cls.getImage() %>" class="card-img-top" alt="Class Image">
                        <div class="card-body">
                            <h5 class="card-title"><%= cls.getClass_name() %></h5>
                           <div class="row mt-2">
                            <p class="card-text col-md-4 fw-bold"><strong><svg fill="#d86e6e" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="25px" height="25px" viewBox="0 0 224.026 224.026" xml:space="preserve" stroke="#d86e6e"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M142.84,0c0,0-11.666,0.091-11.666,9.216c0,0.316,0.426,5.456,0.426,5.456s-2.033-0.962-1.82,0.536 c0,0-0.22,6.104,2.351,6.634c0,0,0.646,5.13,2.569,6.205l0.104,5.035l-4.926,2.89c0,0-11.132-6.317-20.016,2.566 c0,0-14.127-0.204-17.558,5.468c0,0-7.599-7.076-22.045-6.004c0,0-4.926-1.815-6.211-3.428c0,0-0.749-5.243-7.603-3.522 c0,0-5.456,2.03-2.137,9.852c0,0,2.356,3.303,6.957,1.072c0,0,2.356,0.316,5.033,2.676c0,0,11.78,11.558,26.226,10.586 c0,0,4.601-0.743,9.959,1.495c0,0,9.526,3.105,14.127-2.351c0,0,0,5.992,3.964,12.203l-9.962,0.119c0,0-4.813-5.136-6.421-2.031 c0,0-7.603,2.987-4.497,5.337c0,0-0.965,2.363,0.959,3.225c0,0-0.853,1.814,1.285,2.779c0,0,0.213,3.522,7.276,1.279 c0,0,1.075-0.536,1.82-2.146c0,0,6.428,0.536,10.172,2.898c0,0-8.5,40.456-7.215,53.591c0,0-10.562,21.969-3.852,28.253 c0,0-0.433,6.577,11.847,11.277c0,0,7.143,5.14,7.849,6.576c0,0,3.714,11.558,7.709,19.553c0,0,3.142,8.562,1.711,13.134 l-8.708,5.42c0,0-8.993,1.705-11.283,5.419c0,0-1.57,4.001,8.567,1.571c0,0,13.981-2.57,17.981-1.991c0,0,8.422,2.144,6.284-5.998 c0,0-4.566-15.271-4.999-23.991c0,0,12.416,12.574,10.705,31.268c0,0-0.573,1.432,2.283,1.145c0,0,2.989,3.855,4.707-5.846 c0,0,3.428-21.269,0.426-26.847c0,0-1.857-1.851-5.998-2.131c0,0-11.989-11.283-15.844-20.703c0,0-2.855-8.415-4.28-9.706 l0.853-19.272c0,0,2.722-6.132,3.574-11.125c0,0,7.989-5.712,7.849-16.696c0,0,0.901-13.287-2.989-17.129 c-0.244-0.237-0.135-1.023-0.189-1.357c-0.219-1.118,0-1.854,2.046-4.068c0,0,0.859-0.573,1.285-4.284 c0,0,16.557-20.557,18.127-24.978c0,0,4.001-15.271-2.995-17.415c0,0-14.699-7.858-16.271-13.125l0.292-2.777 c0,0,0.707-1.495,0.707-3.778c0,0,3.136-2,2.569-6.07c0,0,0.646-3.505-1.931-1.791C152.053,14.154,154.836,0.597,142.84,0z"></path> </g> </g></svg></strong> <%= cls.getInstructor() %></p>
                            <p class="card-text col-md-4 fw-bold"><strong><svg width="25px" height="25px" viewBox="0 0 1024 1024" class="icon" version="1.1" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M597.678 480.76L390.797 333.998c-22.209-15.766-53-10.532-68.762 11.687l-2.04 2.871c-15.753 22.214-10.526 53 11.691 68.762l206.876 146.771c22.218 15.757 53 10.527 68.766-11.687l2.035-2.876c15.768-22.218 10.529-53.005-11.685-68.766z" fill="#F39A2B"></path><path d="M585.066 423.392l-2.871-2.034c-22.218-15.763-53.004-10.527-68.766 11.687L279.007 763.472c-15.762 22.214-10.527 53.005 11.69 68.763l2.871 2.04c22.218 15.762 53.004 10.53 68.762-11.688l234.423-330.428c15.767-22.22 10.531-53.001-11.687-68.767z" fill="#E5594F"></path><path d="M891.662 525.126c-0.363 50.106-8.104 91.767-27.502 142.522-13.232 34.625-44.231 82.177-70.529 111.108-62.993 69.31-152.478 113.292-240.772 121.615-100.773 9.501-189.621-17.478-271.287-78.551 7.65 5.723-7.536-6.408-7.061-6.009-4.562-3.821-8.967-7.82-13.369-11.824-8.803-8.003-17.105-16.535-25.225-25.224-18.148-19.432-26.188-30.526-41.439-54.866-27.11-43.264-40.704-80.283-51.007-132.536-4.015-20.354-5.395-39.803-5.586-66.233-0.531-73.33-114.29-73.381-113.758 0 1.607 222.487 154.098 420.146 370.093 475.715 216.482 55.697 449.039-49.258 553.91-245.54 37.754-70.664 56.715-150.224 57.293-230.179 0.526-73.379-113.231-73.328-113.761 0.002z" fill="#4A5699"></path><path d="M137.884 501.467c0.362-50.104 8.103-91.762 27.502-142.52 13.233-34.621 44.233-82.173 70.53-111.108 62.993-69.309 152.472-113.29 240.768-121.615 100.773-9.5 189.626 17.479 271.292 78.554-7.652-5.721 7.532 6.408 7.057 6.01 4.563 3.819 8.968 7.821 13.371 11.823 8.803 8 17.108 16.535 25.228 25.225 18.147 19.43 26.187 30.526 41.438 54.866 27.111 43.264 40.709 80.28 51.009 132.533 4.014 20.352 5.396 39.804 5.586 66.232 0.529 73.33 114.287 73.384 113.76 0-1.608-222.489-154.107-420.144-370.099-475.715-216.482-55.7-449.036 49.26-553.905 245.541-37.753 70.664-56.715 150.219-57.292 230.174-0.534 73.384 113.225 73.33 113.755 0z" fill="#C45FA0"></path></g></svg></strong> <%= cls.getDuration() %></p>
                            <p class="card-text col-md-4 fw-bold"><strong><svg width="20px" height="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M18 8.5V8.35417C18 6.50171 16.4983 5 14.6458 5H9.5C7.567 5 6 6.567 6 8.5C6 10.433 7.567 12 9.5 12H14.5C16.433 12 18 13.567 18 15.5C18 17.433 16.433 19 14.5 19H9.42708C7.53436 19 6 17.4656 6 15.5729V15.5M12 3V21" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></strong> <%= cls.getPrice() %></p>
                           </div>
                            <p class="card-text "><strong></strong> <%= cls.getAbout() %></p>
                            <a href="viewClass.jsp?classId=<%= cls.getClass_Id() %>" class="btn btn-primary">Schedule</a>
                            </form>
                        </div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>

   </body>
</html>

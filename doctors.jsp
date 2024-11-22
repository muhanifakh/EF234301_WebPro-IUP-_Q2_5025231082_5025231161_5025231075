<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Doctors</title>
    <!-- Include CSS and JavaScript -->
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/app.css">
    <script src="scripts/app.js"></script>
</head>
<body>
    <!-- Doctors Section Start -->
    <div class="doctors_section margim_90">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="doctors_taital">Our Doctors</h1>
                </div>
            </div>
            <div class="doctors_section_2">
                <div id="my_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <!-- Doctor 1 -->
                                <div class="col-md-4">
                                    <div class="doctors_box" style="height: auto; text-align: center; border-radius: 10px;">
                                        <div class="image_1" style="max-height: 400px;">
                                            <img src="images/doctor1.jpeg" alt="Doctor 1" style="width: 100%; height: auto;">
                                        </div>
                                        <h4 class="humour_text">Dr. Waqas Khan<br><span class="mbbs_text">Cardiologist</span></h4>
                                    </div>
                                </div>

                                <!-- Doctor 2 -->
                                <div class="col-md-4">
                                    <div class="doctors_box" style="height: auto; text-align: center; border-radius: 10px;">
                                        <div class="image_1" style="max-height: 400px;">
                                            <img src="images/doctor2.jpeg" alt="Doctor 2" style="width: 100%; height: auto;">
                                        </div>
                                        <h4 class="humour_text">Dr. Leonardo Petrus<br><span class="mbbs_text">Neurologist</span></h4>
                                    </div>
                                </div>

                                <!-- Doctor 3 -->
                                <div class="col-md-4">
                                    <div class="doctors_box" style="height: auto; text-align: center; border-radius: 10px;">
                                        <div class="image_1" style="max-height: 400px;">
                                            <img src="images/doctor3.jpeg" alt="Doctor 3" style="width: 100%; height: auto;">
                                        </div>
                                        <h4 class="humour_text">Dr. Kautsarrahman<br><span class="mbbs_text">General Doctor</span></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Clear the floats before the rating section starts -->
            <div class="clearfix"></div>

            <!-- Rating Section -->
            <div class="rating_section mt-5 p-4" style="background-color: #f4f7f9; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); max-width: 600px; margin: 100px auto 0;">
                <div class="col-md-12 text-center">
                    <h3 class="rating_taital mb-4">Rate Our Doctors Overall</h3>

                    <!-- Guest: Show overall rating -->
                    <c:choose>
                        <c:when test="${user == null}">
                            <c:choose>
                                <c:when test="${overallRating > 0}">
                                    <p><strong>Overall Rating:</strong> <%= request.getAttribute("overallRating") %> / 5</p>
                                </c:when>
                                <c:otherwise>
                                    <p><strong>No ratings yet.</strong></p>
                                </c:otherwise>
                            </c:choose>
                        </c:when>

                        <!-- Authenticated: Show form -->
                        <c:otherwise>
                            <form action="rating/store" method="POST">
                                <div class="form-group">
                                    <label for="rating" class="d-block mb-3">Select Rating (1-5):</label>
                                    <div class="rating-stars d-inline-flex justify-content-center mb-4">
                                        <label class="mr-2"><input type="radio" name="rating" value="1" required> ★</label>
                                        <label class="mr-2"><input type="radio" name="rating" value="2"> ★★</label>
                                        <label class="mr-2"><input type="radio" name="rating" value="3"> ★★★</label>
                                        <label class="mr-2"><input type="radio" name="rating" value="4"> ★★★★</label>
                                        <label><input type="radio" name="rating" value="5"> ★★★★★</label>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block" style="width: 50%; margin: 0 auto;">Submit Rating</button>
                            </form>
                        </c:otherwise>
                    </c:choose>

                    <!-- Success message after submitting rating -->
                    <c:if test="${not empty successMessage}">
                        <div class="col-md-12">
                            <div class="alert alert-success mt-4" role="alert" style="max-width: 600px; margin: 0 auto;">
                                ${successMessage}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Doctors Section End -->
</body>
</html>
<%@ include file="layout/footer.jsp" %>
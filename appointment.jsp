<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <!-- Include CSS and JS files -->
    <link rel="stylesheet" href="styles/app.css">
    <link rel="stylesheet" href="styles/style.css">
    <script src="scripts/app.js"></script>
</head>
<body>
    <!-- Appointment Section -->
    <div class="appointment_section">
        <div class="container">
            <div class="appointment_box">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="appointment_taital">Book <span style="color: #0cb7d6;">Appointment</span></h1>
                    </div>
                </div>
                <div class="appointment_section_2">
                    <form action="appointments/store" method="POST">
                        <div class="row">
                            <!-- Patient Name -->
                            <div class="col-md-4">
                                <p class="doctorname_text">Patient Name</p>
                                <input type="text" class="email_text" name="patient_name" placeholder="Enter your name" required>
                            </div>

                            <!-- Department's Name -->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <p class="doctorname_text">Department's Name</p>
                                    <select class="form-control" name="department_id" required>
                                        <option value="" disabled selected>Select Department</option>
                                        <c:forEach var="department" items="${departments}">
                                            <option value="${department.id}">${department.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Phone Number -->
                            <div class="col-md-4">
                                <p class="doctorname_text">Phone Number</p>
                                <input type="text" class="email_text" name="phone_number" placeholder="Enter phone number" required>
                            </div>

                            <!-- Doctor's Name -->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <p class="doctorname_text">Doctor's Name</p>
                                    <select class="form-control" name="doctor_id" required>
                                        <option value="" disabled selected>Select Doctor</option>
                                        <c:forEach var="doctor" items="${doctors}">
                                            <option value="${doctor.id}">${doctor.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Appointment Date -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="appointment_date">Choose Date</label>
                                    <input type="date" name="appointment_date" class="form-control" id="appointment_date" required>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="col-md-6 d-flex align-items-end">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Appointment Section End -->

    <!-- Appointment List Section -->
    <div class="container mt-5">
        <div class="appointments-container">
            <div class="col-md-12">
                <h2 class="appointment_taital">Your <span style="color: #0cb7d6;">Appointments</span></h2>
            </div>

            <!-- Success message -->
            <div class="col-md-12">
                <c:if test="${not empty successMessage}">
                    <div class="alert" role="alert" style="max-width: 600px; margin: 0 auto;">
                        ${successMessage}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
            </div>

            <!-- Appointments Table -->
            <div class="col-md-12">
                <c:choose>
                    <c:when test="${not empty appointments}">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Doctor's Name</th>
                                    <th>Department</th>
                                    <th>Phone Number</th>
                                    <th>Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="appointment" items="${appointments}">
                                    <tr>
                                        <td>${appointment.doctor.name}</td>
                                        <td>${appointment.department.name}</td>
                                        <td>${appointment.phoneNumber}</td>
                                        <td>${appointment.appointmentDate}</td>
                                        <td>
                                            <form action="appointments/destroy" method="POST">
                                                <input type="hidden" name="appointment_id" value="${appointment.id}">
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <p class="no-appointments-text">No appointments found.</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</body>
</html>
<%@ include file="layout/footer.jsp" %>
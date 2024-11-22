<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <title><%= request.getAttribute("title") != null ? request.getAttribute("title") : "Aeon Medical Center" %></title>

    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/bootstrap.min.css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" href="/styles/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/jquery.mCustomScrollbar.min.css">

    <!-- Fonts and Icons -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Poppins:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="icon" href="images/fevicon.png" type="image/gif">
</head>
<body>
    <!-- Header Top Section -->
    <div class="header_top_section">
        <div class="header_top_container">
            <!-- Left section (Call) -->
            <div class="header_top_main">
                <span class="call_text">
                    <a href="tel:+6283478293023">
                        Call: +62 83478293023
                    </a>
                </span>
            </div>

            <!-- Center section (Email) -->
            <div class="header_top_main">
                <span class="call_text_2">
                    <a href="mailto:aeonmed@gmail.com">
                        aeonmed@gmail.com
                    </a>
                </span>
            </div>
        </div>
    </div>

    <!-- Header Section -->
    <div class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.jsp">
                    <div class="logo-text">Aeon Medical Center</div>
                </a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Navbar links -->
                </div>
            </nav>
            <div class="custom_bg">
                <div class="custom_menu">	
                    <ul>
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="treatment.jsp">Treatment</a></li>
                        <li><a href="doctors.jsp">Doctors</a></li>
                        <li><a href="appointment.jsp">Appointment</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

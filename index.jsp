<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="layout/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <!-- Add link CSS -->
    <link rel="stylesheet" href="styles/app.css">
    <link rel="stylesheet" href="styles/style.css">
    <script src="scripts/app.js"></script>
</head>
<body>
    <!-- Home Section -->
    <div class="banner_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="banner_taital">Welcome to Aeon Medical Center</h1>
                    <p class="banner_text">
                        At Aeon Medical Center, we combine expert care with cutting-edge technology to ensure you receive the personalized treatment you deserve for a healthier tomorrow.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Review Section Start -->
    <div class="testimonial_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="testimonial_taital">Our Testimonial</h1>
                </div>
            </div>
            <div class="customer_section_2">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box_main">
                            <div id="main_slider" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <!-- Testimonial 1 -->
                                    <div class="carousel-item active">
                                        <div class="customer_main">
                                            <div class="customer_right">
                                                <h3 class="customer_name">Irgy Ardian <span class="quick_icon"><img src="images/quick-icon.png" alt="icon"></span></h3>
                                                <p class="default_text">Dear Aeon,</p>
                                                <p class="enim_text">I had an exceptional experience at Aeon Medical Center. From the moment I walked in, the staff was warm, welcoming, and highly professional...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Testimonial 2 -->
                                    <div class="carousel-item">
                                        <div class="customer_main">
                                            <div class="customer_right">
                                                <h3 class="customer_name">Davin Hakim <span class="quick_icon"><img src="images/quick-icon.png" alt="icon"></span></h3>
                                                <p class="default_text">Dear Aeon,</p>
                                                <p class="enim_text">Aeon Medical Center exceeded my expectations in every way...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Testimonial 3 -->
                                    <div class="carousel-item">
                                        <div class="customer_main">
                                            <div class="customer_right">
                                                <h3 class="customer_name">Dhafin Ocean <span class="quick_icon"><img src="images/quick-icon.png" alt="icon"></span></h3>
                                                <p class="default_text">Dear Aeon,</p>
                                                <p class="enim_text">I can’t recommend Aeon Medical Center enough! The entire experience, from booking the appointment to receiving treatment, was seamless...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial Section End -->

    <!-- Contact Section Start -->
    <div class="contact_section layout_padding">
        <div class="container-fluid">
            <div class="contact_section_2">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="contact_taital">Get In Touch</h1>
                        <form action="contact" method="POST">
                            <div class="mail_section_1">
                                <input type="text" class="mail_text" placeholder="Name" name="Name" required>
                                <input type="text" class="mail_text" placeholder="Phone Number" name="PhoneNumber" required>
                                <input type="email" class="mail_text" placeholder="Email" name="Email" required>
                                <textarea class="massage-bt" placeholder="Description" rows="5" name="Description"></textarea>
                                <button type="submit" class="send_bt">SEND</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6 padding_left_15">
                        <div class="map_main">
                            <div class="map-responsive">
                                <iframe src="https://www.google.com/maps/embed/v1/place?key=API_KEY_HERE&amp;q=Eiffel+Tower+Paris+France" width="600" height="600" frameborder="0" style="border:0; width: 100%;" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Section End -->
</body>
</html>
<%@ include file="layout/footer.jsp" %>

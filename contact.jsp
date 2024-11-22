<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Include CSS and JavaScript -->
    <link rel="stylesheet" href="styles/app.css">
    <script src="scripts/app.js"></script>
</head>
<body>
    <div class="contact_section layout_padding">
        <div class="container-fluid">
            <div class="row">
                <!-- Contact Form Section -->
                <div class="col-md-6">
                    <h1 class="contact_taital">Get In Touch</h1>
                    <form action="#">
                        <!-- Add your contact form fields here -->
                        <input type="text" class="mail_text" placeholder="Name" name="Name" required>
                        <input type="text" class="mail_text" placeholder="Phone Number" name="PhoneNumber" required>
                        <input type="email" class="mail_text" placeholder="Email" name="Email" required>
                        <textarea class="massage-bt" placeholder="Message" rows="5" name="Message"></textarea>
                        <button type="submit" class="btn btn-primary">Send</button>
                    </form>
                </div>
                
                <!-- Google Map Section -->
                <div class="col-md-6">
                    <div class="map-responsive">
                        <iframe src="your-google-map-link" width="600" height="600" frameborder="0" style="border:0;" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

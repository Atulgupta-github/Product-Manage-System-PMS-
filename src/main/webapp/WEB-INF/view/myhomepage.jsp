<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS for Background Image -->
    <style>
        /* Full-screen setup and styling */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        /* Background styling */
        body {
            background-image: url('resources/image/imgb1.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }

        /* Main container occupying full screen */
        .main-container {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        /* Header and jumbotron styling */
        .jumbotron {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            margin: 0;
        }

        /* Navbar styling */
        .navbar {
            background-color: rgba(0, 0, 0, 0.85); /* Light black color */
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        /* Login box section */
        .login-section {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem;
        }

        /* Card styling for the login box */
        .login-card {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            max-width: 500px;
            width: 100%;
        }

        /* Adjust page content spacing below fixed navbar */
        .content-wrapper {
            padding-top: 70px; /* Height of the fixed navbar */
        }
    </style>
</head>
<body>

    <div class="main-container">
        <!-- Full-Width Navigation Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand font-weight-bold" href="#">PMS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="services.jsp">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    </ul>
                    <button class="btn btn-outline-light" onclick="location.href='login'">Login</button>
                </div>
            </div>
        </nav>

        <!-- Header Section -->
        <div class="jumbotron text-center content-wrapper">
            <h1 class="display-4">Welcome to Product Management System</h1>
            <p class="lead">Your gateway to amazing content</p>
        </div>

        <!-- Login Box Section -->
        <div class="login-section">
            <!-- Additional content for the login box can be added here -->
        </div>
    </div>
	<c:if test="${not empty errormessage}">
	    <div class="alert alert-danger" role="alert">
	        ${errormessage}
	    </div>
	</c:if>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

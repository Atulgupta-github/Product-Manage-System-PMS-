<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        body {
            background-image: url('resources/image/img2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }

        .main-container {
            height: 70vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .jumbotron {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            margin: 0;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.85);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .content-wrapper {
            padding-top: 70px;
        }

        .product-card {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0px 5px 15px rgba(255, 255, 255, 0.5);
        }
    </style>
</head>
<body>

    <div class="main-container">
        <!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark">
		    <div class="container-fluid">
		        <a class="navbar-brand font-weight-bold" href="/">PMS</a>
		        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		            <span class="navbar-toggler-icon"></span>
		        </button>
		        <div class="collapse navbar-collapse" id="navbarNav">
		           
		            <!-- LogOut Button moved to the right -->
		            <button class="btn btn-outline-light ml-auto" onclick="location.href='/login'">LogOut</button>
		        </div>
		    </div>
		</nav>


        <!-- Header Section -->
        <div class="jumbotron text-center content-wrapper">
            <h1 class="display-4">Welcome to Product Management System</h1>
            
        </div>

        <!-- Product Options -->
        <div class="container">
            <div class="row justify-content-center">
                <!-- Manage Product -->
                <div class="col-md-6">
                    <div class="product-card" onclick="window.location.href='productcrt'">
                        <h4>Manage Product</h4>
                        <p>Click here to manage your products</p>
                    </div>
                </div>

                <!-- View Product -->
                <div class="col-md-6">
                    <div class="product-card" onclick="window.location.href='viewProduct.jsp'">
                        <h4>Product Enquiry</h4>
                        <p>Click here to view the product list</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .register-container { 
            max-width: 500px; 
            margin: auto; 
            margin-top: 50px; 
            padding: 20px; 
            background-color: rgba(0, 0, 0, 0.7); 
            color: white; 
            border-radius: 8px; 
        }
        body { 
            background-image: url('resources/image/imgb1.jpg'); 
            background-size: cover; 
            background-position: center; 
            background-attachment: fixed; 
            color: white; 
        }
        #alertMessage {
            position: absolute;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 999;
            width: 100%;
            max-width: 600px;
        }
    </style>
</head>
<body>

<!-- Display success or error message only if they exist after registration -->


<div class="container">
    <div class="register-container">
        <h2 class="text-center">Register</h2>
        <form action="/save-user" method="post" onsubmit="return preventMultipleSubmissions();">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="userName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="firstname">First Name</label>
                <input type="text" id="firstname" name="firstName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="lastname">Last Name</label>
                <input type="text" id="lastname" name="lastName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block" id="submitButton">Register</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function preventMultipleSubmissions() {
        const submitButton = document.getElementById("submitButton");
        if (submitButton.disabled) {
            return false; // Prevent the form from submitting again
        }
        submitButton.disabled = true; // Disable the button to prevent further clicks
        return true; // Allow the form to be submitted
    }
</script>

</body>
</html>

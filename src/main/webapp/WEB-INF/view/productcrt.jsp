<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Product</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	
	<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <style>
        /* Full-screen styling */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        /* Background image */
        body {
            background-image: url('resources/image/imgb1.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
        }

        /* Navbar styling */
        .navbar {
            background-color: rgba(0, 0, 0, 0.85);
        }

        /* Form container styling */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100% - 56px); /* Full screen minus navbar height */
        }

        /* Form card */
        .form-card {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 30px;
            border-radius: 8px;
            width: 95%;
            box-shadow: 0px 5px 15px rgba(255, 255, 255, 0.3);
			height:554px;
        }

        .form-card label {
            color: white;
        }

        /* Button styling */
        .btn-primary, .btn-secondary {
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <span class="navbar-brand">Product Create Screen</span>
            <div class="ml-auto">
                <button class="btn btn-outline-light" onclick="document.getElementById('productForm').reset()">Reset</button>
                <button class="btn btn-outline-light ml-2" type="submit" form="productForm">Save Product</button>
            </div>
        </div>
    </nav>
	<c:if test="${not empty dto.successMsg}">
	    <script>
	        document.addEventListener("DOMContentLoaded", function () {
	            const notification = document.getElementById("notification");
	            const message = "${dto.successMsg}";
				if(message!=""){
					document.getElementById("notificationMsg").innerText = message;
		            notification.style.display = "block";

		            // Automatically hide after 5 seconds
		            setTimeout(hideNotification, 5000);
				}
	            
	        });

	        function hideNotification() {
	            document.getElementById("notification").style.display = "none";
	        }
	    </script>
	</c:if>
	<c:if test="${not empty dto.errorMsg}">
		    <script>
		        document.addEventListener("DOMContentLoaded", function () {
		            const notification = document.getElementById("notification");
		            const message = "${dto.errorMsg}";
					if(message!=""){
						document.getElementById("notificationMsg").innerText = message;
			            notification.style.display = "block";

			            // Automatically hide after 5 seconds
			            setTimeout(hideNotification, 5000);
					}
		            
		        });

		        function hideNotification() {
		            document.getElementById("notification").style.display = "none";
		        }
		    </script>
		</c:if>

    <!-- Form Container -->
    <div class="form-container">
        <div class="form-card">
            <h3 class="text-center mb-4">Create Product</h3>
			<div id="notification" style="display: none; position: fixed; top: 20px; right: 20px; background-color: #4CAF50; color: white; padding: 15px; border-radius: 5px; box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3); z-index: 1000;">
			    <span id="notificationMsg"></span>
			    <button style="background: none; border: none; color: white; font-size: 16px; float: right; cursor: pointer;" onclick="hideNotification()">×</button>
			</div>
			
			<form id="productForm" action="/saveProduct" method="post">
			    <div class="form-row">
			        <!-- SKU Code -->
			        <div class="form-group col-md-6">
			            <label for="skuCode">SKU Code</label>
			            <input type="text" class="form-control" id="skuCode" name="skuCode" 
			                   placeholder="Enter SKU Code" 
			                   value="${dto.skuCode}" required>
			        </div>

			        <!-- SKU Name -->
			        <div class="form-group col-md-6">
			            <label for="skuName">SKU Name</label>
			            <input type="text" class="form-control" id="skuName" name="skuName" 
			                   placeholder="Enter SKU Name" 
			                   value="${dto.skuName}" required>
			        </div>
			    </div>

			    <div class="form-row">
			        <!-- SKU Quantity -->
			        <div class="form-group col-md-6">
			            <label for="skuQuantity">SKU Quantity</label>
			            <input type="number" class="form-control" id="skuQuantity" name="skuQuantity"  min="1"
			                   placeholder="Enter SKU Quantity" 
			                   value="${dto.skuQuantity}" required>
			        </div>

			        <!-- MRP -->
			        <div class="form-group col-md-6">
			            <label for="mrp">MRP</label>
			            <input type="number" class="form-control" id="mrp" name="mrp" min="1"
			                   placeholder="Enter MRP" 
			                   value="${dto.mrp}" required>
			        </div>
			    </div>

			    <div class="form-row">
			        <!-- SKU Type -->
			        <div class="form-group col-md-6">
			            <label for="skuType">SKU Type</label>
			            <select class="form-control" id="skuType" name="skuType" required>
			                <option value="" >Select SKU Type</option>
			                <option value="Damage" ${dto.skuType == 'Damage' ? 'selected' : ''}>Damage</option>
			                <option value="Normal" ${dto.skuType == 'Normal' ? 'selected' : ''}>Normal</option>
			                <option value="Expire" ${dto.skuType == 'Expire' ? 'selected' : ''}>Expire</option>
			            </select>
			        </div>

			        <!-- Bin -->
			        <div class="form-group col-md-6">
			            <label for="bin">Bin</label>
			            <input type="text" class="form-control" id="bin" name="bin" 
			                   placeholder="Enter Bin" 
			                   value="${dto.bin}" required>
			        </div>
			    </div>

			    <div class="form-row">
			        <!-- Bin Type -->
			        <div class="form-group col-md-6">
			            <label for="binType">Bin Type</label>
			            <select class="form-control" id="binType" name="binType" required>
			                <option value="Select Bin Type" >Select Bin Type</option>
			                <option value="Good Bin" ${dto.binType == 'Good Bin' ? 'selected' : ''}>Good Bin</option>
			                <option value="Bad Bin" ${dto.binType == 'Bad Bin' ? 'selected' : ''}>Bad Bin</option>
			            </select>
			        </div>

			        <!-- Lot -->
			        <div class="form-group col-md-6">
			            <label for="lot">Lot</label>
			            <input type="text" class="form-control" id="lot" name="lot" 
			                   placeholder="Enter Lot" 
			                   value="${dto.lot}" required>
			        </div>
			    </div>

			    <div class="form-row">
			        <!-- Bin Status -->
			        <div class="form-group col-md-6">
			            <label for="binStatus">Bin Status</label>
			            <select class="form-control" id="binStatus" name="binStatus" required>
			                <option  value="Select Bin Status" >Select Bin Status</option>
			                <option value="Active" ${dto.binStatus == 'Active' ? 'selected' : ''}>Active</option>
			                <option value="Inactive" ${dto.binStatus == 'Inactive' ? 'selected' : ''}>Inactive</option>
			            </select>
			        </div>

			        <!-- SKU Status -->
			        <div class="form-group col-md-6">
			            <label for="skuStatus">SKU Status</label>
			            <select class="form-control" id="skuStatus" name="skuStatus" required>
			                <option value="" >Select SKU Status</option>
			                <option value="Active" ${dto.skuStatus == 'Active' ? 'selected' : ''}>Active</option>
			                <option value="Inactive" ${dto.skuStatus == 'Inactive' ? 'selected' : ''}>Inactive</option>
			            </select>
			        </div>
			    </div>
			</form>

        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

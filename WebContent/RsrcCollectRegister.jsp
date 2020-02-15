<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up As a Resource Collector</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="assets/vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="assets/img/form-img.jpg" alt="">
                    <div class="signup-img-content">
                        <h2>Register as a <br>Resource Collector</br> </h2>
                    </div>
                </div>
                <div class="signup-form">
                    <form action="Rregistration" method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                        <div class="form-input">
                                <label for="r_id" class="required">Resource Collector ID</label>
                                <input type="text" name="r_id" id="r_id" />
                            </div>
                            <div class="form-input">
                                <label for="name" class="required">Full name</label>
                                <input type="text" name="name" id="name" />
                            </div>
                            <div class="form-input">
                                <label for="nic" class="required">NIC</label>
                                <input type="text" name="nic" id="nic" />
                            </div>
                            <div class="form-input">
                                <label for="address" class="required">Address</label>
                                <input type="text" name="address" id="address" />
                            </div>
                            <div class="form-input">
                                <label for="email" class="required">Email</label>
                                <input type="text" name="email" id="email" />
                            </div>
                            <div class="form-input">
                                <label for="phone_number" class="required">Contact Number</label>
                                <input type="text" name="telephone" id="telephone" />
                            </div>
                            <div class="form-input">
                                <label for="area" class="required">Assigned Area</label>
                                <input type="text" name="area" id="area" />
                            </div>
                            <div class="form-input">
                                <label for="username" class="required">User Name</label>
                                <input type="text" name="username" id="username" />
                            </div>
                            <div class="form-input">
                                <label for="password" class="required">Password</label>
                                <input type="Password" name="password" id="password" />
                            </div>
                        </div>
                        
                        
                        <div class="form-submit">
                            <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/nouislider/nouislider.min.js"></script>
    <script src="assets/vendor/wnumb/wNumb.js"></script>
    <script src="assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="assets/vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>
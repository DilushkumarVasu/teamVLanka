<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

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
                        <h2>Register Agricultural Specialist </h2>
                    </div>
                </div>
                <div class="signup-form">
                    <form action="AgriculturalSpecialistRegistration" method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <div class="form-input">
                                <label for="name" class="required">Full name</label>
                                <input type="text" name="name" id="name" />
                            </div>
                            <div class="form-input">
                                <label for="nic" class="required">NIC</label>
                                <input type="text" name="nic" id="nic" />
                            </div>
                            <div class="form-input">
                                <label for="speciality" class="required">Speciality</label>
                                <input type="text" name="speciality" id="speciality" />
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
                                <label for="phone_number" class="required">Phone number</label>
                                <input type="text" name="phone_number" id="phone_number" />
                            </div>
                            <div class="form-input">
                                <label for="regions" class="required">Assigned region</label>
                                <input type="text" name="region" id="regions" />
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
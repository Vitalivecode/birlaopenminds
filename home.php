<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
    <meta name="description" content="">
    <meta name="author" content="Swamy AKunoori">
    <meta name="generator" content="Hugo 0.122.0">
    <title>BIRLA OPEN MIND-CBSE School</title>

    <link href="assets/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-2  offset-md-5"><img src="assets/logo.png" class="img-responsive"></div>
            <div class="col-md-6 offset-md-3">
                <div id="response"></div>
                <form method="post" id="submit">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="enrollmentNo" name="enrollmentNo" placeholder="Enrollment Number" required onkeyup="validateenroll()">
                        <label for="enrollmentNo">Enrollment Number</label><span class="text-success">Ex: 20BOMK0000</span>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="childname" name="childname" placeholder="Child Name" required>
                        <label for="childname">Child Name</label>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-control" id="study" name="study" required>
                            <option selected disabled>Select</option>
                            <option value="4th">4th</option>
                            <option value="5th">5th</option>
                            <option value="6th">6th</option>
                            <option value="7th">7th</option>
                            <option value="8th">8th</option>
                        </select>
                        <label for="study">Grade</label>
                    </div>
                    <div class="form-floating mb-3">
                        <select class="form-control" id="grade" name="grade" required>
                            <option selected disabled>Select</option>
                            <option value="Ruby">Ruby</option>
                            <option value="Emerald">Emerald</option>
                            <option value="Topaz">Topaz</option>
                            <option value="Allen">Allen</option>
                        </select>
                        <label for="grade">Section</label>
                    </div>
                    <div class="form-floating mb-3" id="sports1"></div>
                    <div class="form-floating mb-3" id="sports2"></div>
                    <div class="form-floating mb-3" id="sports3"></div>
                    <button class="btn btn-primary w-100 py-2" type="submit" name="submit">Save</button>
                </form>
            </div>
        </div>
    </div>
</body>
<script src="assets/scripts.js"></script>
<script src="assets/bootstrap.bundle.min.js"></script>

</html>
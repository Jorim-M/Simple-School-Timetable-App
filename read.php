<?php
// Check existence of id parameter before processing further
if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
    // Include config file
    require_once "config.php";
    
    // Define variables and initialize with empty values
    $time_slot = $mon_subject = $mon_time = $mon_teacher = $tue_subject = $tue_time = $tue_teacher = $wed_subject = $wed_time = $wed_teacher = $thur_subject = $thur_time = $thur_teacher = $fri_subject = $fri_time = $fri_teacher = $sat_subject = $sat_time = $sat_teacher = "";

    // Prepare a select statement
    $sql = "SELECT * FROM grade1 WHERE id = ?";
    
    if($stmt = $mysqli->prepare($sql)){
        // Bind variables to the prepared statement as parameters
        $stmt->bind_param("i", $param_id);
        
        // Set parameters
        $param_id = trim($_GET["id"]);
        
        // Attempt to execute the prepared statement
        if($stmt->execute()){
            $result = $stmt->get_result();
            
            if($result->num_rows == 1){
                /* Fetch result row as an associative array. Since the result set contains only one row, we don't need to use while loop */
                $row = $result->fetch_array(MYSQLI_ASSOC);
                
                // Retrieve individual field value
                $param_time_slot = $time_slot;
                $param_mon_subject = $mon_subject;
                $param_mon_time = $mon_time;
                $param_mon_teacher = $mon_teacher;

                $param_tue_subject = $tue_subject;
                $param_tue_time = $tue_time;
                $param_tue_teacher = $tue_teacher;

                $param_wed_subject = $wed_subject;
                $param_wed_time = $wed_time;
                $param_wed_teacher = $wed_teacher;

                $param_thur_subject = $thur_subject;
                $param_thur_time = $thur_time;
                $param_thur_teacher = $thur_teacher;

                $param_fri_subject = $fri_subject;
                $param_fri_time = $fri_time;
                $param_fri_teacher = $fri_teacher;

                $param_sat_subject = $sat_subject;
                $param_sat_time = $sat_time;
                $param_sat_teacher = $sat_teacher;
            } else{
                // URL doesn't contain valid id parameter. Redirect to error page
                header("location: error.php");
                exit();
            }
            
        } else{
            echo "Oops! Something went wrong. Please try again later.";
        }
    }
     
    // Close statement
    $stmt->close();
    
    // Close connection
    $mysqli->close();
} else{
    // URL doesn't contain id parameter. Redirect to error page
    header("location: error.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Time Slot</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    <style type="text/css">
        .wrapper{
            /*width: 500px;
            margin: 0 auto;*/
        }
    </style>
</head>
<body>
    <div class="wrapper m-3">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="card mt-5">
                        <div class="card-body">
                            <div class="page-header">
                                <h1 class="display-3">View Time Slot</h1>
                                <hr>
                            </div>

                            <!-- <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Time</label>
                                        <p class="text-primary form-control-static"><?php //echo $row["time_slot"]; ?></p>
                                    </div>
                                </div>
                            </div> -->

                            <!-- Monday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Monday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["mon_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["mon_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["mon_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->

                            <!-- Tuesday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Tuesday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["tue_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["tue_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["tue_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->

                            <!-- Wednesday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Wednesday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["wed_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["wed_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["wed_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->

                            <!-- Thursday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Thursday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["thur_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["thur_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["thur_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->

                            <!-- Friday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Friday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["fri_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["fri_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["fri_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->

                            <!-- Saturday -->
                            <div class="row justify-content-center"><label class="text-muted display-4">Saturday's <?php echo $row["time_slot"]; ?> Time Slot</label></div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <p class="text-primary form-control-static"><?php echo $row["sat_subject"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Session</label>
                                        <p class="text-primary form-control-static"><?php echo $row["sat_time"]; ?></p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label>Teacher/Supervisor</label>
                                        <p class="text-primary form-control-static"><?php echo $row["sat_teacher"]; ?></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /////// -->
                            <!-- <div class="form-group">
                                <label>Remarks</label>
                                <p class="text-primary form-control-static"><?php echo $row["remarks"]; ?></p>
                            </div> -->
                            <p><a href="index.php" class="btn btn-primary">Back</a></p>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>
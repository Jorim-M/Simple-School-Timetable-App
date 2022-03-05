<?php
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$time_slot = $mon_subject = $mon_time = $mon_teacher = $tue_subject = $tue_time = $tue_teacher = $wed_subject = $wed_time = $wed_teacher = $thur_subject = $thur_time = $thur_teacher = $fri_subject = $fri_time = $fri_teacher = $sat_subject = $sat_time = $sat_teacher = $remarks = "";

$time_slot_err = $mon_subject_err = $mon_time_err = $mon_teacher_err = $tue_subject_err = $tue_time_err = $tue_teacher_err = $wed_subject_err = $wed_time_err = $wed_teacher_err = $thur_subject_err = $thur_time_err = $thur_teacher_err = $fri_subject_err = $fri_time_err = $fri_teacher_err = $sat_subject_err = $sat_time_err = $sat_teacher_err = $remarks_err = "";
 
// Processing form data when form is submitted
if(isset($_POST["id"]) && !empty($_POST["id"])){
    // Get hidden input value
    $id = $_POST["id"];
    
    // Validate time_slot
    $input_time_slot = trim($_POST["time_slot"]);
    if(empty($input_time_slot)){
        $time_slot_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $time_slot = $input_time_slot;
    }

    // Validate mon_subject
    $input_mon_subject = trim($_POST["mon_subject"]);
    if(empty($input_mon_subject)){
        $mon_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $mon_subject = $input_mon_subject;
    }

    // Validate mon_time
    $input_mon_time = trim($_POST["mon_time"]);
    if(empty($input_mon_time)){
        $mon_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $mon_time = $input_mon_time;
    }

    // Validate mon_teacher
    $input_mon_teacher = trim($_POST["mon_teacher"]);
    if(empty($input_mon_teacher)){
        $mon_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $mon_teacher = $input_mon_teacher;
    }

    // Validate tue_subject
    $input_tue_subject = trim($_POST["tue_subject"]);
    if(empty($input_tue_subject)){
        $tue_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $tue_subject = $input_tue_subject;
    }

    // Validate tue_time
    $input_tue_time = trim($_POST["tue_time"]);
    if(empty($input_tue_time)){
        $tue_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $tue_time = $input_tue_time;
    }

    // Validate tue_teacher
    $input_tue_teacher = trim($_POST["tue_teacher"]);
    if(empty($input_tue_teacher)){
        $tue_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $tue_teacher = $input_tue_teacher;
    }

    // Validate wed_subject
    $input_wed_subject = trim($_POST["wed_subject"]);
    if(empty($input_wed_subject)){
        $wed_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $wed_subject = $input_wed_subject;
    }

    // Validate wed_time
    $input_wed_time = trim($_POST["wed_time"]);
    if(empty($input_wed_time)){
        $wed_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $wed_time = $input_wed_time;
    }

    // Validate wed_teacher
    $input_wed_teacher = trim($_POST["wed_teacher"]);
    if(empty($input_wed_teacher)){
        $wed_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $wed_teacher = $input_wed_teacher;
    }

    // Validate thur_subject
    $input_thur_subject = trim($_POST["thur_subject"]);
    if(empty($input_thur_subject)){
        $thur_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $thur_subject = $input_thur_subject;
    }

    // Validate thur_time
    $input_thur_time = trim($_POST["thur_time"]);
    if(empty($input_thur_time)){
        $thur_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $thur_time = $input_thur_time;
    }

    // Validate thur_teacher
    $input_thur_teacher = trim($_POST["thur_teacher"]);
    if(empty($input_thur_teacher)){
        $thur_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $thur_teacher = $input_thur_teacher;
    }

    // Validate fri_subject
    $input_fri_subject = trim($_POST["fri_subject"]);
    if(empty($input_fri_subject)){
        $fri_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $fri_subject = $input_fri_subject;
    }

    // Validate fri_time
    $input_fri_time = trim($_POST["fri_time"]);
    if(empty($input_fri_time)){
        $fri_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $fri_time = $input_mon_time;
    }

    // Validate fri_teacher
    $input_fri_teacher = trim($_POST["fri_teacher"]);
    if(empty($input_fri_teacher)){
        $fri_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $fri_teacher = $input_fri_teacher;
    }

    // Validate sat_subject
    $input_sat_subject = trim($_POST["sat_subject"]);
    if(empty($input_sat_subject)){
        $sat_subject_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $sat_subject = $input_sat_subject;
    }

    // Validate sat_time
    $input_sat_time = trim($_POST["sat_time"]);
    if(empty($input_sat_time)){
        $sat_time_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $sat_time = $input_sat_time;
    }

    // Validate sat_teacher
    $input_sat_teacher = trim($_POST["sat_teacher"]);
    if(empty($input_sat_teacher)){
        $sat_teacher_err = "<t class='text-danger'>*Please input this field.</t>";     
    } else{
        $sat_teacher = $input_sat_teacher;
    }

    // // Validate remarks
    // $input_remarks = trim($_POST["remarks"]);
    // if(empty($input_remarks)){
    //     $remarks_err = "<t class='text-danger'>*Please input this field.</t>";     
    // } else{
    //     $remarks = $input_remarks;
    // }
    
    // Check input errors before inserting in database
    if(empty($time_slot_err) && empty($mon_subject_err) && empty($mon_time_err) && empty($mon_teacher_err) && empty($tue_subject_err) && empty($tue_time_err) && empty($tue_teacher_err) && empty($wed_subject_err) && empty($wed_time_err) && empty($wed_teacher_err) && empty($thur_subject_err) && empty($thur_time_err) && empty($thur_teacher_err) && empty($fri_subject_err) && empty($fri_time_err) && empty($fri_teacher_err) && empty($sat_subject_err) && empty($sat_time_err) && empty($sat_teacher_err)){
        // Prepare an update statement
        $sql = "UPDATE grade1 SET time_slot=?, mon_subject=?, mon_time=?, mon_teacher=?, tue_subject=?, tue_time=?, tue_teacher=?, wed_subject=?, wed_time=?, wed_teacher=?, thur_subject=?, thur_time=?, thur_teacher=?, fri_subject=?, fri_time=?, fri_teacher=?, sat_subject=?, sat_time=?, sat_teacher=? WHERE id=?";
 
        if($stmt = $mysqli->prepare($sql)){
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("sssssssssssssssssssi", $param_time_slot, $param_mon_subject, $param_mon_time, $param_mon_teacher, $param_tue_subject, $param_tue_time, $param_tue_teacher, $param_wed_subject, $param_wed_time, $param_wed_teacher, $param_thur_subject, $param_thur_time, $param_thur_teacher, $param_fri_subject, $param_fri_time, $param_fri_teacher, $param_sat_subject, $param_sat_time, $param_sat_teacher, $param_id);
            
            // Set parameters
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
            $param_id = $id;
            
            // Attempt to execute the prepared statement
            if($stmt->execute()){
                // Records updated successfully. Redirect to landing page
                header("location: index.php");
                exit();
            } else{
                echo "Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
        $stmt->close();
    }
    
    // Close connection
    $mysqli->close();
} else{
    // Check existence of id parameter before processing further
    if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
        // Get URL parameter
        $id =  trim($_GET["id"]);
        
        // Prepare a select statement
        $sql = "SELECT * FROM grade1_term1 WHERE id = ?";
        if($stmt = $mysqli->prepare($sql)){
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("i", $param_id);
            
            // Set parameters
            $param_id = $id;
            
            // Attempt to execute the prepared statement
            if($stmt->execute()){
                $result = $stmt->get_result();
                
                if($result->num_rows == 1){
                    /* Fetch result row as an associative array. Since the result set contains only one row, we don't need to use while loop */
                    $row = $result->fetch_array(MYSQLI_ASSOC);
                    
                    // Retrieve individual field value
                    $time_slot = $row["time_slot"];

                    $mon_subject = $row["mon_subject"];
                    $mon_time = $row["mon_time"];
                    $mon_teacher = $row["mon_teacher"];

                    $tue_subject = $row["tue_subject"];
                    $tue_time = $row["tue_time"];
                    $tue_teacher = $row["tue_teacher"];

                    $wed_subject = $row["wed_subject"];
                    $wed_time = $row["wed_time"];
                    $wed_teacher = $row["wed_teacher"];

                    $thur_subject = $row["thur_subject"];
                    $thur_time = $row["thur_time"];
                    $thur_teacher = $row["thur_teacher"];

                    $fri_subject = $row["fri_subject"];
                    $fri_time = $row["fri_time"];
                    $fri_teacher = $row["fri_teacher"];

                    $sat_subject = $row["sat_subject"];
                    $sat_time = $row["sat_time"];
                    $sat_teacher = $row["sat_teacher"];
                    $remarks = $row["remarks"];
                } else{
                    // URL doesn't contain valid id. Redirect to error page
                    header("location: error.php");
                    exit();
                }
                
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
        
        // Close statement
        //$stmt->close();
        
        // Close connection
        $mysqli->close();
    }  else{
        // URL doesn't contain id parameter. Redirect to error page
        header("location: error.php");
        exit();
    }
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Record</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    <style type="text/css">
        .wrapper{
            width: 825px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card mt-5">
                        <div class="card-body">
                            <div class="page-header">
                                <h2 class="display-4">Update Record</h2>
                            </div>
                            <p>Please edit the input values and submit to update the record.</p>
                            <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">

                                <!-- Time Slot -->
                        <div class="form-group <?php echo (!empty($time_slot_err)) ? 'has-error' : ''; ?>">
                            <label>Time Slot</label>
                            <select class="form-control" name="time_slot" id="time_slot">
                                <option value="5:30am">5:30am</option>
                                <option value="8:00am">8:00am</option>
                                <option value="9:00am">9:00am</option>
                                <option value="10:00am">10:00am</option>
                                <option value="11:00am">11:00am</option>
                                <option value="12:00am">12:00pm</option>
                                <option value="1:00pm">1:00pm</option>
                                <option value="2:00pm">2:00pm</option>
                                <option value="3:00pm">3:00pm</option>
                                <option value="4:00pm">4:00pm</option>
                                <option value="5:00pm">5:00pm</option>
                                <option value="7:00pm">7:00pm</option>
                            </select>
                            <span class="help-block"><?php echo $time_slot_err;?></span>
                        </div>
                        <!-- /////////// -->

                        <!-- Monday -->
            <div class="display-4 text-center">Monday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($mon_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="mon_subject" id="mon_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $mon_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($mon_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="mon_time" id="mon_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $mon_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($mon_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="mon_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $mon_teacher_err;?></span>
                        </div>
                    </div>
                </div><hr>
                        <!-- /////////// -->

                        <!-- Tuesday -->
            <div class="display-4 text-center">Tuesday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($tue_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="tue_subject" id="tue_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $tue_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($tue_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="tue_time" id="tue_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $tue_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($tue_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="tue_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $tue_teacher_err;?></span>
                        </div>
                    </div>
                </div><hr>
                        <!-- /////////// -->

                        <!-- Wednesday -->
            <div class="display-4 text-center">Wednesday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($wed_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="wed_subject" id="wed_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $wed_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($wed_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="wed_time" id="wed_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $wed_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($wed_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="wed_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $wed_teacher_err;?></span>
                        </div>
                    </div>
                </div><hr>
                        <!-- /////////// -->

                        <!-- Thursday -->
            <div class="display-4 text-center">Thursday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($thur_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="thur_subject" id="thur_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $thur_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($thur_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="thur_time" id="thur_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $thur_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($thur_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="thur_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $thur_teacher_err;?></span>
                        </div>
                    </div>
                </div><hr>
                        <!-- /////////// -->

                        <!-- Friday -->
            <div class="display-4 text-center">Friday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($fri_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="fri_subject" id="fri_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $fri_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($fri_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="fri_time" id="fri_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $fri_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($fri_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="fri_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $fri_teacher_err;?></span>
                        </div>
                    </div>
                </div><hr>
                        <!-- /////////// -->

                        <!-- Saturday -->
            <div class="display-4 text-center">Saturday</div><br>
                <div class="row">
                    <div class="col">
                        <div class="form-group <?php echo (!empty($sat_subject_err)) ? 'has-error' : ''; ?>">
                            <label>Subject</label>
                            <select class="form-control" name="sat_subject" id="sat_subject">
                                <option value="Mathematics">Mathematics</option>
                                <option value="English">English</option>
                                <option value="Kiswahili">Kiswahili</option>
                                <option value="Science">Science</option>
                                <option value="Environment">Environment</option>
                                <option value="Religious Studies">Religious Studies</option>
                                <option value="Sports">Sports</option>
                                <option value="Prep Time">Prep Time</option>
                                <option value="Break">Break</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Free Time">Free Time</option>
                            </select>
                            <span class="help-block"><?php echo $sat_subject_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($sat_time_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Session</label>
                            <select class="form-control" name="sat_time" id="sat_time">
                                <option value="5:30-7:00">5:30-7:00</option>
                                <option value="8:00-9:00">8:00-9:00</option>
                                <option value="9:00-10:00">9:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-1:00">12:00-1:00</option>
                                <option value="1:00-2:00">1:00-2:00</option>
                                <option value="2:00-3:00">2:00-3:00</option>
                                <option value="3:00-4:00">3:00-4:00</option>
                                <option value="4:00-5:00">4:00-5:00</option>
                                <option value="5:00-6:00">5:00-6:00</option>
                                <option value="7:00-9:00">7:00-9:00</option>
                            </select>
                            <span class="help-block"><?php echo $sat_time_err;?></span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group <?php echo (!empty($sat_teacher_err)) ? 'has-error' : ''; ?>">
                            <label>Subject Teacher</label>
                            <input type="text" name="sat_teacher" class="form-control" placeholder="Type in teacher's name">
                            <span class="help-block"><?php echo $sat_teacher_err;?></span>
                        </div>
                    </div>
                </div><br><br>

                                <!-- <div class="form-group <?php //echo (!empty($remarks_err)) ? 'has-error' : ''; ?>">
                                    <label>Remarks</label>
                                    <textarea name="remarks" class="form-control"><?php echo $remarks; ?></textarea>
                                    <span class="help-block"><?php //echo $remarks_err;?></span>
                                </div> -->

                                <input type="hidden" name="id" value="<?php echo $id; ?>"/>
                                <input type="submit" class="btn btn-primary" value="Submit">
                                <a href="index.php" class="btn btn-default">Cancel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>     
        </div>
    </div>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard | School Timetable</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="assets/vendor/js-cookie/js.cookie.js"></script>
    <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="assets/vendor/jquery-scroll-lock/jquery-scrollLock.min.js"></script>
    <script src="assets/js/argon.min.js"></script>
    <script src="assets/js/argon.js"></script>
    <style type="text/css">
        .wrapper{
            /*width: 650px;
            margin: 0 auto;*/
        }
        .page-header h2{
            margin-top: 0;
        }
        table tr td:last-child a{
            margin-right: 15px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>
    <div class="wrapper m-4">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
               <div class="card" data-aos="slide-up" data-aos-duration="900">
                    <div class="page-headerclearfix mt-5 mb-5">
                        <div class="col-7"><h2 class="display-4 mb--5">School Timetable</h2></div>
                        <div class="col-6 pull-right"><a href="create.php" class="btn btn-success pull-right"><i class="fas fa-plus mr-2"></i>Add New Time Slot</a></div>
                    </div>
                    <?php
                    // Include config file
                    require_once "config.php";
                    
                    // Attempt select query execution
                    $sql = "SELECT * FROM grade1";
                    if($result = $mysqli->query($sql)){
                        if($result->num_rows > 0){
                            echo "<div class='table-responsive'>";
                            echo "<table class='table table-bordered' style='border-color:#929394;'>";
                                echo "<thead>";
                                    echo "<tr>";
                                        // echo "<th>#</th>";
                                        echo "<th class='text-center'>Time</th>";
                                        echo "<th class='text-white text-center' style='background-color: #f5365c;'>Monday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #fb6340;'>Tuesday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #ffd600;'>Wednesday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #2dce89;'>Thursday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #0B8FA7;'>Friday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #5466cd;'>Saturday</th>";;
                                        echo "<th class='text-center'>Action</th>";
                                    echo "</tr>";
                                echo "</thead>";
                                echo "<tbody>";
                                while($row = $result->fetch_array()){
                                    echo "<tr>";
                                        // echo "<td>" . $row['id'] . "</td>";
                                        echo "<td class='text-center align-middle'>" . $row['time_slot'] . "</td>";
                                        echo "<td class='text-center text-default' style='background-color:#fa9aad;'>" . "<span class='font-weight-bold'>" . $row['mon_subject'] . "</span>" . "<br>" . " ". $row['mon_time'] ." <br> ". $row['mon_teacher'] ."</td>";
                                        echo "<td class='text-center text-default' style='background-color:#fdb19f;'>" . "<span class='font-weight-bold'>" . $row['tue_subject'] . "</span>" . "<br>" . " ". $row['tue_time'] ." <br> ". $row['tue_teacher'] ."</td>";
                                        echo "<td class='text-center text-default' style='background-color:#ffea7f;'>" . "<span class='font-weight-bold'>" . $row['wed_subject'] . "</span>" . "<br>" . " ". $row['wed_time'] ." <br> ". $row['wed_teacher'] ."</td>";
                                        echo "<td class='text-center text-default' style='background-color:#96e6c4;'>" . "<span class='font-weight-bold'>" . $row['thur_subject'] . "</span>" . "<br>" . " ". $row['thur_time'] ." <br> ". $row['thur_teacher'] ."</td>";
                                        echo "<td class='text-center text-default' style='background-color:#88E6F6;'>" . "<span class='font-weight-bold'>" . $row['fri_subject'] . "</span>" . "<br>" . " ". $row['fri_time'] ." <br> ". $row['fri_teacher'] ."</td>";
                                        echo "<td class='text-center text-default' style='background-color:#aeb8f1;'>" . "<span class='font-weight-bold'>" . $row['sat_subject'] . "</span>" . "<br>" . " ". $row['sat_time'] ." <br> ". $row['sat_teacher'] ."</td>";
                                        echo "<td class='align-middle'>";
                                            echo "<row class='ml-2 mr--3'>";
                                            echo "<a href='read.php?id=". $row['id'] ."' data-toggle='tooltip' data-original-title='View'><span class='fas fa-eye'></span></a>";
                                            echo "<a href='update.php?id=". $row['id'] ."' data-toggle='tooltip' data-original-title='Update' class=''><span class='display-5 fas fa-pencil-square-o'></span></a>";
                                            echo "<a href='delete.php?id=". $row['id'] ."'  data-toggle='tooltip' data-original-title='Delete'><span class='fas fa-trash'></span></a>";
                                            echo "</row>";
                                        echo "</td>";
                                    echo "</tr>";
                                }
                                echo "</tbody>";
                                echo "<thead>";
                                    echo "<tr>";
                                        // echo "<th>#</th>";
                                        echo "<th class='text-center'>Time</th>";
                                        echo "<th class='text-white text-center' style='background-color: #f5365c;'>Monday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #fb6340;'>Tuesday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #ffd600;'>Wednesday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #2dce89;'>Thursday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #0B8FA7;'>Friday</th>";
                                        echo "<th class='text-white text-center' style='background-color: #5466cd;'>Saturday</th>";;
                                        echo "<th class='text-center'>Action</th>";
                                    echo "</tr>";
                                echo "</thead>";                           
                            echo "</table>";
                            echo "</div>";
                            // Free result set
                            $result->free();
                        } else{
                            echo "<p class='lead ml-3'><em>No time slots were found.</em></p>";
                        }
                    } else{
                        echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
                    }
                    
                    // Close connection
                    $mysqli->close();
                    ?>

                </div>
          </div>
            </div>
        </div>        
    </div>
    </div>
</body>
</html>
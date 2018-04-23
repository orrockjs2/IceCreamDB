<?php
// Include config file
require_once 'config.php';
 
// Define variables and initialize with empty values
$eid = $facilityNum = $jobTitle = $salary = $NDAStatus = $vacationDays = "";
$eid_err = $facility_err = $title_err = $salary_err = $NDA_err = $vacation_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    //Validate eid
    $input_eid = trim($_POST["eid"]);
    if(empty($input_eid)){
        $eid_err = "Please enter an eid.";
    } else{
        $eid = $input_eid;
    }
    
    // Validate facility
    $input_facility = trim($_POST["facilityNum"]);
    if(empty($input_facility)){
        $facility_err = 'Please enter a facility number.';     
    } else{
        $facilityNum = $input_facility;
    }
    
    //validate job
    $input_job = trim($_POST["jobTitle"]);
    if(empty($input_job)){
        $title_err = "Please enter a job title.";
    } elseif(!filter_var(trim($_POST["jobTitle"]), FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z'-.\s ]+$/")))){
        $title_err = 'Please enter a valid title.';
    } else{
        $jobTitle = $input_job;
    }
    
    // Validate salary
    $input_salary = trim($_POST["salary"]);
    if(empty($input_salary)){
        $salary_err = "Please enter a valid salary.";     
    }  else{
        $salary = $input_salary;
    }
    
    // Validate NDA
    $input_NDA = trim($_POST["NDA"]);
    if(empty($input_NDA)){
        $NDA_err = "Please enter a valid NDA Status.";     
    }  else{
        $NDAStatus = $input_NDA;
    }
    
    //Validate vacation
    $input_vacation = trim($_POST["vacationDays"]);
    if(empty($input_vacation)){
        $vacation_err = "Please enter vacation days.";
    } else {
        $vacationDays = $input_vacation;
    }
    
    // Check input errors before inserting in database
    if(empty($eid_err) && empty($facility_err) && empty($title_err) && empty($salary_err) && empty($NDA_err) && empty($vacation_err)){
        // Prepare an insert statement
        $sql = "INSERT INTO Clerical (eid, facilityNum, jobTitle , salary, NDAStatus, vacationDays) VALUES (?, ?, ?, ?, ?, ?)";
         
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ssssss", $param_eid, $param_facility, $param_title, $param_salary, $param_NDA, $param_vacation);
            
            // Set parameters
            $param_eid = $eid;
            $param_facility = $facilityNum;
            $param_title = $jobTitle;
            $param_salary = $salary;
            $param_NDA = $NDAStatus;
            $param_vacation = $vacationDays;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                header("location: ClericalIndex.php");
                exit();
            } else{
                echo "Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
        mysqli_stmt_close($stmt);
    }
    
    // Close connection
    mysqli_close($link);
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        .wrapper{
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h2>Create Record</h2>
                    </div>
                    <p>Please fill this form and submit to add clerical employee record to the database.</p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                        <div class="form-group <?php echo (!empty($eid_err)) ? 'has-error' : ''; ?>">
                            <label>eid</label>
                            <input type="number" name="eid" class="form-control" value="<?php echo $eid; ?>">
                            <span class="help-block"><?php echo $eid_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($facility_err)) ? 'has-error' : ''; ?>">
                            <label>facility number</label>
                            <input type="number" name="facilityNum" class="form-control" value="<?php echo $facilityNum; ?>">
                            <span class="help-block"><?php echo $facility_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($title_err)) ? 'has-error' : ''; ?>">
                            <label>Job Title</label>
                            <input type="text" name="jobTitle" class="form-control" value="<?php echo $jobTitle; ?>">
                            <span class="help-block"><?php echo $title_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($salary_err)) ? 'has-error' : ''; ?>">
                            <label>Salary</label>
                            <input type="text" name="salary" class="form-control" value="<?php echo $salary; ?>">
                            <span class="help-block"><?php echo $salary_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($NDA_err)) ? 'has-error' : ''; ?>">
                            <label>NDA Status</label>
                            <input type="text" name="NDA" class="form-control" value="<?php echo $NDAStatus; ?>">
                            <span class="help-block"><?php echo $NDA_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($vacation_err)) ? 'has-error' : ''; ?>">
                            <label>Vacation Days</label>
                            <input type="number" name="vacationDays" class="form-control" value="<?php echo $vacationDays; ?>">
                            <span class="help-block"><?php echo $vacation_err;?></span>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-default">Cancel</a>
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>
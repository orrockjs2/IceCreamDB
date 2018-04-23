<?php
// Include config file
require_once 'config.php';
 
// Define variables and initialize with empty values
$eid = $storeNum = $wage = $hoursWorked = "";
$eid_err = $store_err = $wage_err = $hours_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    //Validate eid
    $input_eid = trim($_POST["eid"]);
    if(empty($input_eid)){
        $eid_err = "Please enter an eid.";
    } else{
        $eid = $input_eid;
    }
    
    // Validate address
    $input_store = trim($_POST["storeNum"]);
    if(empty($input_store)){
        $store_err = 'Please enter a store number.';     
    } else{
        $storeNum = $input_store;
    }
    
    // Validate phone
    $input_wage = trim($_POST["wage"]);
    if(empty($input_wage)){
        $wage_err = "Please enter a valid wage.";     
    }  else{
        $wage = $input_wage;
    }
    
    //Validate hours
    $input_hours = trim($_POST["hoursWorked"]);
    if(empty($input_hours)){
        $hours_err = "Please enter hours worked.";
    } else {
        $hoursWorked = $input_hours;
    }
    
    // Check input errors before inserting in database
    if(empty($eid_err) && empty($store_err) && empty($wage_err) && empty($hours_err)){
        // Prepare an insert statement
        $sql = "INSERT INTO Hourly (eid, storeNum, wage, hoursWorked) VALUES (?, ?, ?, ?)";
         
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ssss", $param_eid, $param_storeNum, $param_wage, $param_hours);
            
            // Set parameters
            $param_eid = $eid;
            $param_storeNum = $storeNum;
            $param_wage = $wage;
            $param_hours = $hoursWorked;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                header("location: HourlyIndex.php");
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
                    <p>Please fill this form and submit to add hourly employee record to the database.</p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                        <div class="form-group <?php echo (!empty($eid_err)) ? 'has-error' : ''; ?>">
                            <label>eid</label>
                            <input type="number" name="eid" class="form-control" value="<?php echo $eid; ?>">
                            <span class="help-block"><?php echo $eid_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($store_err)) ? 'has-error' : ''; ?>">
                            <label>store number</label>
                            <input type="number" name="storeNum" class="form-control" value="<?php echo $storeNum; ?>">
                            <span class="help-block"><?php echo $store_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($wage_err)) ? 'has-error' : ''; ?>">
                            <label>wage</label>
                            <input type="text" name="wage" class="form-control" value="<?php echo $wage; ?>">
                            <span class="help-block"><?php echo $wage_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($hours_err)) ? 'has-error' : ''; ?>">
                            <label>Hours Worked</label>
                            <input type="text" name="hoursWorked" class="form-control" value="<?php echo $hoursWorked; ?>">
                            <span class="help-block"><?php echo $hours_err;?></span>
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
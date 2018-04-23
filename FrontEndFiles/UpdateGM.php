<?php
// Include config file
require_once 'config.php';
 
// Define variables and initialize with empty values
$facilityNum = $jobTitle = $salary = $NDAStatus = $vacationDays = "";
$facility_err = $title_err= $salary_err = $NDA_err = $vacation_err = "";
 
// Processing form data when form is submitted
if(isset($_POST["eid"]) && !empty($_POST["eid"])){
    // Get hidden input value
    $eid = $_POST["eid"];

    
   // Validate storeNum
    $input_store = trim($_POST["storeNum"]);
    if(empty($input_store)){
        $store_err = 'Please enter a store number.';     
    } else{
        $storeNum = $input_store;
    }
    
    // Validate salary
    $input_salary = trim($_POST["salary"]);
    if(empty($input_salary)){
        $salary_err = "Please enter a valid salary.";     
    }  else{
        $salary = $input_salary;
    }
    
    //Validate vacation
    $input_vacation = trim($_POST["vacationDays"]);
    if(empty($input_vacation)){
        $vacation_err = "Please enter vacation days.";
    } else {
        $vacationDays = $input_vacation;
    }
    
    // Check input errors before inserting in database
    if(empty($store_err) && empty($salary_err) && empty($vacation_err)){
        // Prepare an update statement
        $sql = "UPDATE GeneralManagers SET storeNum=?, salary=?, vacationDays=? WHERE eid=?";
         
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "issi", $param_store, $param_salary, $param_vacation, $param_eid);
            
            // Set parameters
            $param_eid = $eid;
            $param_storeNum = $storeNum;
            $param_salary = $salary;
            $param_vacation = $vacationDays;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records updated successfully. Redirect to landing page
                header("location: GMindex.php");
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
} else{
    // Check existence of eid parameter before processing further
    if(isset($_GET["eid"]) && !empty(trim($_GET["eid"]))){
        // Get URL parameter
        $eid =  trim($_GET["eid"]);
        
        // Prepare a select statement
        $sql = "SELECT * FROM GeneralManagers WHERE eid = ?";
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "i", $param_eid);
            
            // Set parameters
            $param_eid = $eid;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                $result = mysqli_stmt_get_result($stmt);
    
                if(mysqli_num_rows($result) == 1){
                    /* Fetch result row as an associative array. Since the result set contains only one row, we don't need to use while loop */
                    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                    
                    // Retrieve individual field value
                    $storeNum = $row["storeNum"];
                    $salary = $row["salary"];
                    $vacationDays = $row["vacationDays"];
                } else{
                    // URL doesn't contain valid eid. Redirect to error page
                    header("location: error.php");
                    exit();
                }
                
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
        
        // Close statement
        mysqli_stmt_close($stmt);
        
        // Close connection
        mysqli_close($link);
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
                        <h2>Update Record</h2>
                    </div>
                    <p>Please edit the input values and submit to update the record.</p>
                    <form action="<?php echo htmlspecialchars(basename($_SERVER['REQUEST_URI'])); ?>" method="post">
                        <div class="form-group <?php echo (!empty($store_err)) ? 'has-error' : ''; ?>">
                            <label>store number</label>
                            <input type="number" name="storeNum" class="form-control" value="<?php echo $storeNum; ?>">
                            <span class="help-block"><?php echo $store_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($salary_err)) ? 'has-error' : ''; ?>">
                            <label>Salary</label>
                            <input type="text" name="salary" class="form-control" value="<?php echo $salary; ?>">
                            <span class="help-block"><?php echo $salary_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($vacation_err)) ? 'has-error' : ''; ?>">
                            <label>Vacation Days</label>
                            <input type="text" name="vacationDays" class="form-control" value="<?php echo $vacationDays; ?>">
                            <span class="help-block"><?php echo $vacation_err;?></span>
                        </div>
                        <input type="hidden" name="eid" value="<?php echo $eid; ?>"/>
                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.php" class="btn btn-default">Cancel</a>
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>

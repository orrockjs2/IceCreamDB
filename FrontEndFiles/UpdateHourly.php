<?php
// Include config file
require_once 'config.php';
 
// Define variables and initialize with empty values
$storeNum = $wage = $hoursWorked = "";
$store_err = $wage_err = $hours_err = "";
 
// Processing form data when form is submitted
if(isset($_POST["eid"]) && !empty($_POST["eid"])){
    // Get hidden input value
    $eid = $_POST["eid"];
    
    // Validate store
    $input_store = trim($_POST["storeNum"]);
    if(empty($input_store)){
        $store_err = "Please enter a store number.";
    } else{
        $storeNum = $input_store;
    }
    
    // Validate wage
    $input_wage = trim($_POST["wage"]);
    if(empty($input_wage)){
        $wage_err = 'Please enter a wage.';     
    } else{
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
    if(empty($store_err) && empty($wage_err) && empty($hours_err)){
        // Prepare an update statement
        $sql = "UPDATE Hourly SET storeNum=?, wage=?, hoursWorked=? WHERE eid=?";
         
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssi", $param_store, $param_wage, $param_hours, $param_eid);
            
            // Set parameters
            $param_store = $storeNum;
            $param_wage = $wage;
            $param_hours = $hoursWorked;
            $param_eid = $eid;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records updated successfully. Redirect to landing page
                header("location: index.php");
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
        $sql = "SELECT * FROM Hourly WHERE eid = ?";
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
                    $wage = $row["wage"];
                    $hoursWorked = $row["hoursWorked"];
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
                            <label>Store Number</label>
                            <input type="number" name="storeNum" class="form-control" value="<?php echo $storeNum; ?>">
                            <span class="help-block"><?php echo $store_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($wage_err)) ? 'has-error' : ''; ?>">
                            <label>Wage</label>
                            <textarea name="wage" class="form-control"><?php echo $wage; ?></textarea>
                            <span class="help-block"><?php echo $wage_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($hours_err)) ? 'has-error' : ''; ?>">
                            <label>Hours Worked</label>
                            <input type="number" name="hoursWorked" class="form-control" value="<?php echo $hoursWorked; ?>">
                            <span class="help-block"><?php echo $hours_err;?></span>
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

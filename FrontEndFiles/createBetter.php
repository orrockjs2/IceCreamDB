<?php
// Include config file
require_once 'config.php';
 
// Define variables and initialize with empty values
$name = $address = $phone = $storeNum = $wage = $hoursWorked ="";
$name_err = $address_err = $phone_err = $store_err = $wage_err = $hours_err ="";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    //validate eid
    $input_eid = trim($_POST["eid"]);
    if(empty($input_eid)){
        $eid_err = "Please enter an eid.";
    } else {
        $eid = $input_eid;
    }
    
    //Validate storeNum
    $input_store = trim($_POST["storeNum"]);
    if(empty($input_store)){
        $store_err = "Please enter a store number.";
    } else{
        $storeNum = $input_store;
    }
    
    //Validate wage
    $input_wage = trim($_POST["wage"]);
    if(empty($input_wage)){
        $wage_err = "Please enter a wage.";
    } else{
        $wage = $input_wage;
    }
    
    //Validate Hours
    $input_hours = trim($_POST["hoursWorked"]);
    if(empty($input_hours)){
        $hours_err = "Please enter hours worked.";
    } else {
        $hoursWorked = $input_hours;
    }
    
    // Validate name
    $input_name = trim($_POST["name"]);
    if(empty($input_name)){
        $name_err = "Please enter a name.";
    } elseif(!filter_var(trim($_POST["name"]), FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z'-.\s ]+$/")))){
        $name_err = 'Please enter a valid name.';
    } else{
        $name = $input_name;
    }
    
    // Validate address
    $input_address = trim($_POST["address"]);
    if(empty($input_address)){
        $address_err = 'Please enter an address.';     
    } else{
        $address = $input_address;
    }
    
    // Validate phone
    $input_phone = trim($_POST["phone"]);
    if(empty($input_phone)){
        $phone_err = "Please enter a valid phone number.";     
    }  else{
        $phone = $input_phone;
    }
    
    // Check input errors before inserting in database
    if(empty($name_err) && empty($address_err) && empty($phone_err) && empty($eid_err)&& empty($store_err) &&empty($wage_err) &&empty($hours_err)){
        // Prepare an insert statement
        
        $sql1 = "INSERT INTO Employees (employeeName, employeeAddr, employeePhone) VALUES (?, ?, ?)"; 
        $sql = "INSERT INTO Hourly (eid, storeNum, wage, hoursWorked) VALUES(?, ?, ?, ?)";
        
        if($stmt1 = mysqli_prepare($link, $sql1) && $stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt1, "sss", $param_name, $param_address, $param_phone);
            mysqli_stmt_bind_param($stmt, "ssss", $param_eid, $param_store, $param_wage, $param_hours);
            
            // Set parameters
            $param_eid = $eid;
            $param_store = $storeNum;
            $param_wage = $wage;
            $param_hours = $hoursWorked;
            $param_name = $name;
            $param_address = $address;
            $param_phone = $phone;
            
            // Attempt to execute the prepared statement

            if(mysqli_stmt_execute($stmt1)&& mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                
                    header("location: index.php");
                    exit();   
                

            } else{
                echo "Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
       
        mysqli_stmt_close($stmt);
         mysqli_stmt_close($stmt1);
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
                    <p>Please fill this form and submit to add employee record to the database.</p>
                    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                        <div class="form-group <?php echo (!empty($eid_err)) ? 'has-error' : ''; ?>">
                            <label>eid</label>
                            <input type="number" name="eid" class="form-control" value="<?php echo $eid; ?>">
                            <span class="help-block"><?php echo $eid_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($store_err)) ? 'has-error' : ''; ?>">
                            <label>Store Number</label>
                            <input type="number" name="storeNum" class="form-control" value="<?php echo $storeNum; ?>">
                            <span class="help-block"><?php echo $store_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($wage_err)) ? 'has-error' : ''; ?>">
                            <label>Wage</label>
                            <input type="text" name="wage" class="form-control" value="<?php echo $wage; ?>">
                            <span class="help-block"><?php echo $wage_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($hours_err)) ? 'has-error' : ''; ?>">
                            <label>Hours Worked</label>
                            <input type="text" name="hoursWorked" class="form-control" value="<?php echo $hoursWorked; ?>">
                            <span class="help-block"><?php echo $hours_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($name_err)) ? 'has-error' : ''; ?>">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="<?php echo $name; ?>">
                            <span class="help-block"><?php echo $name_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($address_err)) ? 'has-error' : ''; ?>">
                            <label>Address</label>
                            <textarea name="address" class="form-control"><?php echo $address; ?></textarea>
                            <span class="help-block"><?php echo $address_err;?></span>
                        </div>
                        <div class="form-group <?php echo (!empty($phone_err)) ? 'has-error' : ''; ?>">
                            <label>Phone</label>
                            <input type="text" name="phone" class="form-control" value="<?php echo $phone; ?>">
                            <span class="help-block"><?php echo $phone_err;?></span>
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
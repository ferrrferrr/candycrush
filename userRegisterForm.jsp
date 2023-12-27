<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Register Form For GPS New Member</title> 
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        button {
            background-color: #008CBA;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #00537a;
        }
    </style>
</head> 
<body>
    <a href="mainPage.jsp"><button>Back</button></a>
    <div class="form-container"> 
        <form action="userRegisterProcess.jsp" method="post"> 
            <!-- User Details --> 
            <h2>User Personal Information</h2> 
            <label for="userFullname">User Full Name:</label> 
            <input type="text" id="fullName" name="userFullname" required> 
            
            <label for="userAddress">User Address:</label> 
            <input type="text" id="registrationNumber" name="userAddress" required>

            <label for="userIC">User Identification Number:</label> 
            <input type="number" id="identificationNumber" name="userIC" required> 

            <label for="userPhoneNo">User Phone Number:</label> 
            <input type="number" id="phoneNumber" name="userPhoneNo" required>  

            <!-- User Employment Details -->
            <h2>User Guardian Information</h2>
            <label for="guardianFName">Guardian Full Name:</label>
            <input type="text" id="employerName" name="guardianFName" required>

            <label for="guardianRelation">Guardian Relation:</label>
            <input type="text" id="officeAddress" name="guardianRelation" required>

            <label for="guardianAddress">Guardian Address:</label>
            <input type="text" id="occupation" name="guardianAddress" required>

            <label for="guardianPhoneNo">Guardian Phone Number:</label>
            <input type="text" id="grossIncome" name="guardianPhoneNo" required>

            <!-- Submit Button -->
            <div class="submit-container"> 
                <input type="submit" value="Register"> 
            </div> 
        </form> 
    </div> 
</body> 
</html>

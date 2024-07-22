<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "newuser";

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Fetch form data
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Validate password
    if ($password !== $confirm_password) {
        echo "<script>alert('Passwords do not match.')</script>";
        echo "<script>location.replace('Signup.html')</script>";
        exit();
    }

    // Check if email already exists
    $check_email_query = "SELECT * FROM users WHERE email = ?";
    $stmt = $conn->prepare($check_email_query);
    if (!$stmt) {
        die("Error preparing statement: " . $conn->error);
    }
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<script>alert('Email already exists. Please use a different email.')</script>";
        echo "<script>location.replace('Signup.html')</script>";
        exit();
    }
    
    $stmt->close();

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    // Prepare SQL statement
    $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, email, password) VALUES (?, ?, ?, ?)");
    if (!$stmt) {
        die("Error preparing statement: " . $conn->error);
    }

    $stmt->bind_param("ssss", $first_name, $last_name, $email, $hashed_password);

    // Execute the statement
    if ($stmt->execute()) {
        echo "<script>alert('Registration successful.')</script>";
        echo "<script>location.replace('Homepage1.html')</script>";
    } else {
        echo "<script>alert('Error: Could not register.')</script>";
        echo "<script>location.replace('Signup.html')</script>";
    }

    $stmt->close();
}

$conn->close();
?>

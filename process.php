<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "olduser";

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Fetch form data
    $username = $_POST['Username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare SQL statement
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND email = ?");
    $stmt->bind_param("ss", $username, $email);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if a user was found
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // Verify password
        if ($row['password'] == $password) {
            echo "<script>location.replace('Homepage1.html')</script>";
        } else {
            echo "<script>alert('Incorrect password')</script>";
            echo "<script>location.replace('404-error.html')</script>";
        }
    } else {
        echo "<script>alert('No user found with the provided credentials')</script>";
        echo "<script>location.replace('404-error.html')</script>";
    }

    $stmt->close();
}

$conn->close();
?>

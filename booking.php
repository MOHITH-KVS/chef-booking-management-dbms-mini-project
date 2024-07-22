<?php
session_start(); // Start the session

// Database credentials
$host = 'localhost';
$db = 'booking';
$user = 'root';
$pass = '';

// Create a new connection to the database
$conn = new mysqli($host, $user, $pass, $db);

// Check if the connection was successful
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Function to generate a random name
function generateRandomName() {
    $names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Henry', 'Ivy', 'Jack'];
    $randomIndex = array_rand($names);
    return $names[$randomIndex];
}

// Fetch and set username (using a random name)
$user_name = generateRandomName();

// Check if the form is submitted and process booking
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the booking data from the POST request
    $chef_id = $_POST['chef_id'] ?? '';
    $chef_name = $_POST['chef_name'] ?? '';
    $chef_contact = $_POST['chef_contact'] ?? '';

    // Generate a random user contact number (example: random 8-digit number)
    $user_contact = rand(10000000, 99999999); // Generates a random 8-digit number

    // Prepare the SQL statement to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO bookings (chef_id, chef_name, chef_contact, user_name, user_contact) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("issss", $chef_id, $chef_name, $chef_contact, $user_name, $user_contact);

    // Execute the query
    if ($stmt->execute()) {
        // Redirect to a success page
        header("Location: confirm.html");
        exit();
    } else {
        echo 'Error: ' . $stmt->error;
    }

    // Close the statement
    $stmt->close();
}

// Close the connection
$conn->close();
?>
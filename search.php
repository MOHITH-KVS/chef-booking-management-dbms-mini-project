<?php
// Database credentials
$host = 'localhost';
$db = 'chefinder';
$user = 'root';
$pass = "";

// Create a new connection to the database
$conn = new mysqli($host, $user, $pass, $db);

// Check if the connection was successful
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Get the search term from the POST request
$searchTerm = $_POST['search'] ?? '';

// Prepare the SQL statement to prevent SQL injection
$stmt = $conn->prepare("SELECT * FROM chefs WHERE Name LIKE ? OR Specialist LIKE ?");
$likeTerm = "%$searchTerm%";
$stmt->bind_param("ss", $likeTerm, $likeTerm);

// Execute the query
$stmt->execute();
$result = $stmt->get_result();

// Fetch all results as an associative array
$chefs = $result->fetch_all(MYSQLI_ASSOC);

// Close the statement and connection
$stmt->close();
$conn->close();

// Return the results as JSON
echo json_encode($chefs);
?>

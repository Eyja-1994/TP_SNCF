<?php
    include 'param.php';

// Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

$sql = "SELECT id, heure_depart, heure_arrive, gare_depart, gare_arrive FROM tgv";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	// output data of each row
	while($row = $result->fetch_assoc()) {
    	echo "id: " . $row["id"]. " - Heure de départ: " . $row["heure_depart"]. " - Heure d'arrivé: " . $row["heure_arrive"]. " - Gare de départ: " . $row["gare_depart"]. " - Gare d'arrivé: " . $row["gare_arrive"]. "<br>";
	}
} else {
	echo "0 results";
}
$conn->close();
?>
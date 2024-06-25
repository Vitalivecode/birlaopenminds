<?php
header('Content-Type: application/json');

include 'connect.php';

$query = "select * from sports where count < 30";
$result = $conn->query($query);

$data = [];
if ($result->num_rows > 0) {
    $i = 0;
    while ($row = $result->fetch_assoc()) {
        $data[$i] = ['name' => $row['name'], 'count' => $row['count'],];
        $i++;
    }
}

$response = [
    'status' => 'success',
    'data' => $data
];

echo json_encode($response);
exit;

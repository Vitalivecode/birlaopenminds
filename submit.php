<?php
header('Content-Type: application/json');

include 'connect.php';
date_default_timezone_set('Asia/Kolkata');
$current_time = date('Y-m-d H:i:sa');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $enrollmentNo = trim($_POST['enrollmentNo']);
    $childname = trim($_POST['childname']);
    $study = trim($_POST['study']);
    $grade = trim($_POST['grade']);
    $prioritySports1 = trim($_POST['prioritySports1']);
    $prioritySports2 = trim($_POST['prioritySports2']);
    $prioritySports3 = trim($_POST['prioritySports3']);
    if ($enrollmentNo == "" || $childname == "" || $study == "" || $grade == "" || $prioritySports1 == "" || $prioritySports2 == "" || $prioritySports3 == "") {
        $response = [
            'status' => 'error',
            'message' => 'Please fill in all fields.'
        ];
        echo json_encode($response);
        exit;
    }

    $query1 = "select * from sports where name='" . $prioritySports1 . "' and count < 31";
    $result1 = $conn->query($query1);
    while ($row = $result1->fetch_assoc()) {
        $r1 = $row['count'] + 1;
    }

    if ($r1 < 31) {
        $sql1 = "update sports set count ='" . $r1 . "' where name='" . $prioritySports1 . "' ";
        $res1 = $conn->query($sql1);

        $query = "insert into register(enrollmentNo,childname,study,grade,prioritySports1,prioritySports2,prioritySports3,createDate) values('$enrollmentNo','$childname','$study','$grade','$prioritySports1','$prioritySports2','$prioritySports3', '$current_time')";
        if (mysqli_query($conn, $query)) {
            $response = [
                'status' => 'success',
                'message' => 'Form submitted successfully!'
            ];
        } else {
            if ($conn->error)
                $error = $conn->error;
            else
                $error = "Database Network error.";
            $response = [
                'status' => 'error',
                'message' => $error
            ];
        }
        mysqli_close($conn);
        echo json_encode($response);
        exit;
    } else {
        if ($r1 > 30)
            $msg = $prioritySports1 . ' Seats Closed';
        $response = [
            'status' => 'error',
            'message' => $msg
        ];
        echo json_encode($response);
        exit;
    }
} else {
    $response = [
        'status' => 'error',
        'message' => 'requesting method incorrect'
    ];
    echo json_encode($response);
    exit;
}

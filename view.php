<?php
include 'connect.php';
$query = "select * from register order by createDate DESC";
$result = $conn->query($query);
?>

<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
    <meta name="description" content="">
    <meta name="author" content="Swamy AKunoori">
    <meta name="generator" content="Hugo 0.122.0">
    <title>BIRLA OPEN MIND-CBSE School</title>

    <link href="assets/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
</head>

<body onload="validate()">
    <div class="container-fluid">
        <img src="assets/logo.png" class="img-responsive">
        <a href="view" target="_self" class="btn btn-primary text-center w-25" id="load" style="display: none;">Reload</a>
        <div id="table-response" style="display: none;">
            <table id="data-table" class="table table-striped">
                <thead>
                    <tr>
                        <th>Sno</th>
                        <th>Enrollment No</th>
                        <th>Child Name</th>
                        <th>Grade</th>
                        <th>Section</th>
                        <th>Choice 1</th>
                        <th>Choice 2</th>
                        <th>Choice 3</th>
                        <th>Date</th>
                    </tr>
                    <!-- <tr class="filters">
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><input type="text" placeholder="Choice 1" /></th>
                        <th><input type="text" placeholder="Choice 2" /></th>
                        <th><input type="text" placeholder="Choice 3" /></th>
                    </tr> -->
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        $i = 0;
                        while ($row = $result->fetch_assoc()) {
                            $i = $i + 1;
                    ?>
                            <tr>
                                <td><?= $i ?></td>
                                <td><?= $row['enrollmentNo'] ?></td>
                                <td><?= $row['childname'] ?></td>
                                <td><?= $row['study'] ?></td>
                                <td><?= $row['grade'] ?></td>
                                <td><?= $row['prioritySports1'] ?></td>
                                <td><?= $row['prioritySports2'] ?></td>
                                <td><?= $row['prioritySports3'] ?></td>
                                <td><?= $row['createDate'] ?></td>
                            </tr>
                    <?php
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</body>
<script>
    function validate() {
        let text;
        let person = prompt("Please enter your secrete key:", "");
        if (person == null || person == "" || person != "2024") {
            alert("Wrong Secrete Key");
            document.getElementById('load').style.display = 'block';
            document.getElementById('table-response').style.display = 'none';
        } else {
            document.getElementById('table-response').style.display = 'block';
        }
        exit;
    }

    var table = $("#data-table").DataTable({
        dom: "Bfrtip",
        buttons: [{
            extend: 'excelHtml5',
            title: 'bomis',
            exportOptions: {
                columns: ':visible'
            }
        }],
        orderCellsTop: true,
        fixedHeader: true,
        initComplete: function() {
            var api = this.api();
            api.columns().eq(0).each(function(colIdx) {
                var cell = $('.filters th').eq(
                    $(api.column(colIdx).header()).index()
                );
                var title = $(cell).text();

                $('input', cell).on('keyup change', function() {
                    api
                        .column(colIdx)
                        .search(this.value)
                        .draw();
                });
            });
        }
    });
</script>
<script src="assets/bootstrap.bundle.min.js"></script>

</html>
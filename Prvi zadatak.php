<?php
$veza = mysqli_connect("localhost", "root", "", "renatosplajt");
if ($veza->connect_error) {
    die("Povezivanje neuspješno: " . $veza->connect_error);
}
echo "Uspješno spojeno!";
echo "<br><br>";
echo "<h3>RECEPCIJA</h3>";
$sql = "SELECT Recepcija_id , imeGosta,  cijenaSobe , obavezanDorucak  FROM Recepcija";
if($result = mysqli_query($veza, $sql)) {
    if(mysqli_num_rows($result) > 0) {
        echo "<table border='1'>";
        echo "<tr>";
        echo "<th>Recepcija_id</th>";
        echo "<th>imeGosta</th>";
        echo "<th>cijenaSobe</th>";
        echo "<th>obavezanDorucak</th>";
        echo "</tr>";

        while($row = mysqli_fetch_array($result)) {
            echo "<tr>";
            echo "<td>" . $row['Recepcija_id'] . "</td>";
            echo "<td>" . $row['imeGosta'] . "</td>";
            echo "<td>" . $row['cijenaSobe'] . "</td>";
            echo "<td>" . $row['obavezanDorucak'] . "</td>";
        }
        echo "</table>";
        mysqli_free_result($result);
    } else {
        echo "No records matching your query were found.";
    }
} else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($veza);
}
echo "<br><br>";
echo "<h3>SOBE</h3>";
$sql2 = "SELECT Sobe_id , Recepcija_id , posteljinaBrojSoba  FROM SOBE";
if($result2 = mysqli_query($veza, $sql2)) {
    if(mysqli_num_rows($result2) > 0) {
        echo "<table border='1'>";
        echo "<tr>";
        echo "<th>Sobe_id</th>";
        echo "<th>Recepcija_id</th>";
        echo "<th>posteljinaBrojSoba</th>";
        echo "</tr>";

        while($row = mysqli_fetch_array($result2)) {
            echo "<tr>";
            echo "<td>" . $row['Sobe_id'] . "</td>";
            echo "<td>" . $row['Recepcija_id'] . "</td>";
            echo "<td>" . $row['posteljinaBrojSoba'] . "</td>";
        }
        echo "</table>";
        mysqli_free_result($result2);
    } else {
        echo "No records matching your query were found.";
    }
} else {
    echo "ERROR: Could not able to execute $sql2. " . mysqli_error($veza);
}
mysqli_close($veza);

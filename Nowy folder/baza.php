<?php
/*$serwer = 'localhost';
$login = 'root';
$haslo = '';
$baza='Klienci';

$do_bazy=mysqli_connect($serwer,$login,$haslo,$baza);
if(mysqli_connect_errno())
{
    exit("Błąd połączenia z serwerem MySQL :".mysqli_connect_error());
}else{
    echo"Połączono z serwerem baz danych.<br>";
}
$wynik=mysqli_query($do_bazy,'SELECT * FROM Klienci');

echo $wynik;
mysqli_close($do_bazy);*/
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <include >
        <require>
</head>
<body>
    <?php
    $serwer = 'localhost';
    $login = 'root';
    $haslo = '';
    $baza='Klienci';
    $do_bazy=mysqli_connect($serwer,$login,$haslo,$baza);
    
    if(!$do_bazy){
        echo "Błąd połączenia z serwerm MySQL";
        ?>
        </body>
        </html>
        <?php
        exit;
    }else{
        $zapytanie=mysqli_query($do_bazy,'SELECT * FROM Klienci');
        if(!$zapytanie)
        {
            mysqli_close();
            echo"Blad w zapytaniu";
            ?>
            </body>
            </html>
            <?php
            exit;
        }else{

       
        ?>
        <table id="tab1">
            <tr>
                <td>Nr Klienta</td>
                <td>Imię</td>
                <td>Nazwisko</td>
                <td>Miejscowość</td>
    </tr>   
    <?php
    while($wiersze=mysqli_fetch_array($zapytanie))
    {
        echo "<tr>";
        echo"<td>$wiersze[0]</td>";
        echo"<td>$wiersze[1]</td>";
        echo"<td>$wiersze[2]</td>";
        echo"<td>$wiersze[3]</td>";
        echo"</tr>";
    }
    ?>
    </table>
    <?php
    
}
}
?>





<?php


$zapytaniea=mysqli_query($do_bazy,"SELECT * FROM klienci WHERE NAZWISKO='Kruk'");
if(!$zapytanie===true){
    mysqli_close();
    exit("Błąd w zapytaniu<br>");
}
while($tab=mysqli_fetch_array($zapytaniea)){
echo"<ul>";
echo"<li>".$tab['Nazwisko']."".$tab['Imie']."</li>";
echo "</ul>";
}
mysqli_close($do_bazy);
?>
</body>
</html>        
        

    

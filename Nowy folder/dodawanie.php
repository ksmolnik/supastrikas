<?php
$do_bazy=mysqli_connect('localhost','root','','Klienci');
if(!$do_bazy)
{
    exit ("Błąd połączenia z serwerem MySQL");
}
$dodaj=mysqli_query($do_bazy,"INSERT INTO Klienci VALUES (12, 'Anna','Lisek','Wadowice')");
if(!$dodaj)
{
    mysqli_close($do_bazy);
    exit("Błąd w zapytaniu<br>");
}
$ile=mysqli_affected_rows($do_bazy);
echo "Liczba rekordów dodanych do tabeli wynosi:", $ile,"<br>";
mysqli_close($do_bazy);
?>
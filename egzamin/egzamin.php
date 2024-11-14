<?php
$do_bazy=mysqli_connect('localhost','root','','biblioteka');

if(!$do_bazy)
{
    echo"Błąd połaczenia z serwerem MYSQL";

    exit;
}
else
{
$zapytanie=mysqli_query($do_bazy,'SELECT imie, nazwisko FROM autorzy ORDER BY nazwisko;');
if(!$zapytanie)
{
    mysqli_close();
    echo"Blad w zapytaniu <br>";
    exit;
}else{
    echo"<h3>Polecamy dzieła autorów</h3>";
    echo "<ol>";
    while ($wiersze=mysqli_fetch_array($zapytanie)) {
        echo"<li>", "$wiersze[imie]"," ","$wiersze[nazwisko]";
    }
    echo"</ol>";
    mysqli_close($do_bazy);
}
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="#" method="post">
        Imię: <input type="text" name="imie"/>
        Nazwisko: <input type="text" name="nazwisko"/>
        Symbol:<input type="number" name="symbol"/>
        <button name="bnt">DODAJ</button>
    </form>

</body>
</html>
<?php

$do_bazy=mysqli_connect('localhost','root','','biblioteka');

if(!$do_bazy)
{
    echo"Błąd połaczenia z serwerem MYSQL";

    exit;
}
else
{
    $imie=$_POST['imie'];
    $nazwisko=$_POST['nazwisko'];
    $symbol=$_POST['symbol'];
    $dodaj="INSERT INTO czytelnicy (imie,nazwisko,kod) VALUES ('$imie','$nazwisko','$symbol');";
    $zapytanie2=mysqli_query($do_bazy,$dodaj);
    if(!$zapytanie2===true){
        echo"Nowy klient nie zostal dodany do bazy";
    }else{
        echo "Czytelnik  ".$nazwisko." ".$imie." został dodany do bazy.";
    }
    mysqli_close($do_bazy);
}
?>
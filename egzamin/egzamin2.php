<?php
$do_bazy=mysqli_connect('localhost','root','','podroze');

if(!$do_bazy)
{
    echo"Błąd połaczenia z serwerem MYSQL";

    exit;
}else{
    $zapytanie=mysqli_query($do_bazy,'SELECT nazwaPliku, podpis FROM zdjecia order by 2;');
    $zapytanie2=mysqli_query($do_bazy,'SELECT dataWyjazdu, cel from wycieczki where dostepna='0' ')
}
if(!$zapytanie,!$zapytanie2){
    mysqli_close();
    echo "Blad w zapytaaniu <br>";
    exit;
}else{

    echo "<h3>W tym roku wyjedziemy do: </h3>";
    while($wiersze=mysqli_fetch_array($zapytanie)){
        echo"<img src='$wiersze[nazwaPliku]' title='$wiersze[podpis]' height='120px'>";
    }

    echo"<h3>W poprzednich latach byliśmy... </h3>"
    ec
    mysqli_close($do_bazy);
}

?>
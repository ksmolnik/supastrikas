<?php
$tab = array();
for($i=0;$i<10;$i++){
    $tab[]=rand(5,25);
};
foreach($tab as $item){
    echo$item." ";
};
echo"\n";
function przysta($tab){
    foreach($tab as $abc){
        if($abc % 2 == 0){
           echo $abc;
        };
        
    };
    echo"\n";
};

przysta($tab);

function coczwarta($tab){
    foreach($tab as $xyz){
        for ($i=0; $i < 10 ; $i++){ 
            $tab[i] * 2;
            
        };
        
    };
    
};




$liczba = 5;

if($liczba % 5 ==0){
    echo"<br><br>liczba jest podzielna<br><br>";
}else{
    echo"<br><br>liczba jest nie podzielna<br><br>";
};

$data=getdate();

$dzien=$data['mday'];
$miesiac=$data['mon'];
$rok=$data['year'];
$godzina=$data['hours'];
$minuta=$data['minutes'];
$sekunda=$data['seconds'];

echo"Aktualna data to: $dzien.$miesiac.$rok<br>";
echo"Aktualna godzina: $godzina:$minuta:$sekunda";


?>
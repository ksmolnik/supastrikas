let liczbaNormalnych = 0;
let liczbaUlgowych = 0;

function bilety() {
    let miejsca = document.querySelectorAll('#miejsca input[type="checkbox"]');
    let rodzajBiletu = document.querySelector('input[name="rodzaj-biletu"]:checked').value;
    let liczbaZaznaczonych = 0;

    for (let i = 0; i < miejsca.length; i++) {
        const miejsce = miejsca[i];
        if (miejsce.checked && !miejsce.classList.contains('zarezerwowane')) {
            liczbaZaznaczonych++;
            miejsce.checked = false;
            miejsce.classList.add('zarezerwowane');
            miejsce.disabled = true;
        }
    }
    

    if (rodzajBiletu == 'normalny') {
        liczbaNormalnych += liczbaZaznaczonych;
    } else if (rodzajBiletu === 'ulgowy') {
        liczbaUlgowych += liczbaZaznaczonych;
    }

    let kosztNormalnych = liczbaNormalnych * 20;
    let kosztUlgowych = liczbaUlgowych * 17;

    let sumaKosztow = kosztNormalnych + kosztUlgowych;

    document.getElementById("podsumowanie").innerHTML = "Wybrałeś " + (liczbaNormalnych+liczbaUlgowych) + " biletów. " + liczbaNormalnych + " biletów normalnych za " + kosztNormalnych + "PLN oraz " + liczbaUlgowych +  " biletów ulgowych za " + kosztUlgowych +" PLN. Suma kosztów: " + sumaKosztow +"PLN."
}
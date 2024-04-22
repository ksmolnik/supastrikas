const imie = document.querySelector('#imie');
const nazwisko = document.querySelector('#nazwisko');
const adres = document.querySelector('#adres');
const czysc = document.querySelector('#czysc');
const zapisz = document.querySelector('#zapisz');
const wyswietl = document.querySelector('#wyswietl');

zapisz.addEventListener('click' , (evt) =>{
evt.preventDefault();
const name = imie.value;
const surname = nazwisko.value;
const address = adres.value;

p = document.createElement('p');
p.innerHTML = `imie: ${name}, nazwisko: ${surname}, adres: ${address}`;
wyswietl.append(p);
   
})

czysc.addEventListener('click' , (evt) =>{
    evt.preventDefault();
    

})
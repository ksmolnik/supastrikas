const bilety1 = document.querySelectorAll('#bilety1');
const bnt1 = document.querySelector('#bnt1');
const bilety2 = document.querySelector('#bilety2');
const bnt2 = document.querySelector('#bnt2');
const bilety3 = document.querySelector('#bilety3');
const bnt3 = document.querySelector('#bnt3');
const bilety4 = document.querySelector('#bilety4');
const bnt4 = document.querySelector('#bnt4');
const display = document.querySelector('#display');



bnt1.addEventListener('click', function(evt) {
    evt.preventDefault();
    const bilety1Value = bilety1.value;
    const cenabiletu1 = 40;

    const cenarazem1 = bilety1Value * cenabiletu1;

    display.innerHTML = `${cenarazem1}`

    


})
bnt2.addEventListener('click', function(evt) {
    evt.preventDefault();
    const bilety2Value = bilety2.value;
    const cenabiletu2 = 45;

    const cenarazem2 = bilety2Value * cenabiletu2;

    display.innerHTML = `${cenarazem2}`

    


})
bnt3.addEventListener('click', function(evt) {
    evt.preventDefault();
    const bilety3Value = bilety3.value;
    const cenabiletu3 = 35;

    const cenarazem3 = bilety3Value * cenabiletu3;

    display.innerHTML = `${cenarazem3}`

    


})
bnt4.addEventListener('click', function(evt) {
    evt.preventDefault();
    const bilety4Value = bilety4.value;
    const cenabiletu4 = 40;

    const cenarazem4 = bilety4Value * cenabiletu4;

    display.innerHTML = `${cenarazem4}`

    


})
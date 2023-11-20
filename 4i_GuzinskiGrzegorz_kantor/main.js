const ilemonet = document.querySelector('#ilemonet');
const cenamonety = document.querySelector('#cenamonety');
const wartoscmonet = document.querySelector('#wartoscmonet');
const ilebanknotow = document.querySelector('#ilebanknotow');
const cenabanknotu = document.querySelector('#cenabanknotu');
const wartoscbanknotow = document.querySelector('#wartoscbanknotow');
const bnt = document.querySelector('#bnt');
const lacznawartosc = document.querySelector('#lacznawartosc');

bnt.addEventListener('click',function (evt) {
    evt.preventDefault();
    const ilemonetValue = ilemonet.value;
    const cenamonetyValue = cenamonety.value;
    const ilebanknotowValue = ilebanknotow.value;
    const cenabanknotuValue = cenabanknotu.value;

    const monety = ilemonetValue * cenamonetyValue;
    const banknoty = ilebanknotowValue * cenabanknotuValue;
    const razem = (monety + banknoty);
    
    wartoscbanknotow.innerHTML = `${banknoty.toFixed(2)} PLN`
    lacznawartosc.innerHTML = `${razem.toFixed(2)} PLN`
    wartoscmonet.innerHTML = `${monety.toFixed(2)} PLN`
    wartoscbanknotow.style.color = "rgb(128, 203, 128)";
    wartoscmonet.style.color = "rgb(128, 203, 128)";
    lacznawartosc.style.color = "rgb(1, 255, 0)";

})
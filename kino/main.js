const btn = document.querySelector('#btn');

btn.addEventListener('click', function(){
    const checkboxes = document.querySelectorAll('.seat-checkbox');
    let total = 0;
    checkboxes.forEach(function(checkbox){
        if(checkbox.checked){
            total += parseInt(checkbox.value);
        }
    });
    document.getElementById('summ').innerHTML = `Koszt biletów: ${total} zł`
})
const lista = document.querySelector('#lista');
const addBtn = document.querySelector('#add');
const findBtn = document.querySelector('#find');
const criteria = document.querySelector('#criteria');
const filterList = document.querySelector('#filterList');



updateUsersList();
addBtn.addEventListener('click', (evt) => {
    evt.preventDefault();
    const name = document.querySelector('#name').value;
    const city = document.querySelector('#city').value;
    const age = document.querySelector('#age').value;
    let user = {
        userID: crypto.randomUUID(),
        userName: name,
        userCity: city,
        userAge: age
    };
    usersArr.unshift(user);
    updateUsersList();
});
function updateUsersList(arr = usersArr) {
    lista.innerHTML = '';
    arr.forEach((user) =>{
        let li = document.createElement('li');
        li.classList.add('list-group-item');
        let span = document.createElement('span')
        span.innerHTML = `<strong>${user.userName}</strong> lat <strong>${user.userAge}</strong> z miasta <strong>${user.userCity}</strong>`;
        let button = document.createElement('button');
        button.classList.add('btn');
        button.classList.add('btn-outline-danger');
        button.textContent = 'X'
        button.addEventListener('click', () =>{
            removeUser(user.userID);
        })
        li.style.display = `flex`
        li.style.justifyContent = `space-between`
        li.append(span);
        li.append(button);
        lista.append(li);
    });
}
function removeUser(removeByID){
    usersArr = usersArr.filter((user) => user.userID !== removeByID);
    updateUsersList();
};

function generateSearchOption (usersArr) {
    const userObject = usersArr[0];
    for(const userObjProperty of Object.keys(userObject)){
        if(userObjProperty !== 'userID'){
            const option = document.createElement('option');
            option.value = userObjProperty;
            option.innerHTML = userObjProperty;
            selectSearchBy.append   (option);
        }
    }
}
generateSearchOption();


findBtn.addEventListener('click', function (evt){
    evt.preventDefault();
    foundUsersList.innerHTML = '';
    usersArr
        .filter((elem) => elem[selectSearchBy.value] == searchValue.value)
        .map((elem)=>{
            const li = document.createElement('li');
            li.classList.add('list-group-item');
            li.innerHTML = `${elem.userName} ${elem.userCity} ${elem.userAge}`;
            foundUsersList.append(li);
        });
        console.log(usersArr);
})
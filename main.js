const electoralName = document.querySelector('#electoralName');
const isCoalition = document.querySelector('#isCoalition');
const numberOfVotes = document.querySelector('#numberOfVotes');
const next = document.querySelector('#next');
const calc = document.querySelector('#calc');
const electoralList = document.querySelector('#electoralList');

next.addEventListener('click', function (evt) {
  evt.preventDefault();
  const electoralNameValue = electoralName.value;
  const isCoalitionValue = isCoalition.value;
  const numberOfVotesValue = numberOfVotes.value;
  const partie = [];

  const partia = {
    electoralName: electoralNameValue,
    isCoalition: isCoalitionValue.checked ? 5 : 8,
    numberOfVotes: numberOfVotesValue,
  };
  partie.push(partia);

  const li = document.createElement('li');
  li.innerHTML = `${partia.electoralName} , ${partia.isCoalition},   ilosc głosów: ${partia.numberOfVotes} `;
  electoralList.appendChild(li);
});

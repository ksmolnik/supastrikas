const electoralName = document.querySelector("#electoralName");
const isCoalition = document.querySelector("#isCoalition");
const electoralList = document.querySelector("#electoralList");
const numberOfVotes = document.querySelector("#numberOfVotes");
const form = document.querySelector("#form");
const table = document.querySelector("#table");
const next = document.querySelector("#next");
const calc = document.querySelector("#calc");
const results = document.querySelector("#results");

next.addEventListener("click", function (evt) {
  evt.preventDefault();
  const partie = [];
  const electoralNameValue = electoralName.value;
  const isCoalitionValue = isCoalition.value;
  const numberOfVotesValue = numberOfVotes.value;

  const partia = {
    electoralName: electoralNameValue,
    isCoalition: isCoalition.checked ? 8 : 5,
    numberOfVotes: numberOfVotesValue,
  };

  partie.push(partia);

  const li = document.createElement("li");
  li.innerHTML = `<b>${partia.electoralName}</b>, ${
    partia.isCoalition == 8 ? "jest koalicją" : "nie jest koalicją"
  }, ilość głosów: ${partia.numberOfVotes}`;
  electoralList.appendChild(li);
});

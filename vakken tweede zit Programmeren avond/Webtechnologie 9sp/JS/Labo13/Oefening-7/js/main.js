let inzet = 10000;

let rente = 0.02;

let looptijd = 10

let Eind_Saldo = inzet * (1 + rente)^looptijd;

let intro_tekst = `Op een periode van ${looptijd} jaar stijgt je bezit van ${inzet} naar ${Eind_Saldo}`;

console.log(intro_tekst);
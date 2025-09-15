"use strict";
const sectionBitcoin = document.querySelector("#BitcoinRate");
let urlBitcoin = 'https://sampleapis.assimilate.be/bitcoin/current';

let bitcoinWaarde = fetch(urlBitcoin)
.then(res => res.json())
.then(data => {
  let h3 = document.createElement("h3");
  let tekst = `1 bitcoin is EUR: ${data.bpi.EUR.rate} waard`;
  h3.appendChild(document.createTextNode(tekst))
  sectionBitcoin.appendChild(h3);
});
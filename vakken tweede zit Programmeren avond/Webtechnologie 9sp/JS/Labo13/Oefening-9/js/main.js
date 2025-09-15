let randomAmoutToPay = Math.floor(Math.random() * 16527);

const AmoutToPay = randomAmoutToPay;

let opening_tekst = `Te betalen bedrag is ${AmoutToPay}`;

let amoutOf50 = Math.ceil(AmoutToPay/50);

let fiftyBills_tekst = `Je hebt ${amoutOf50} briefjes van 50 nodig`;

const change = Math.round((amoutOf50 * 50 ) - AmoutToPay);

let change_tekst = `Je wisselgeld is dan ${change} euro`;

let Tekst_array = [opening_tekst,fiftyBills_tekst,change_tekst];

Tekst_array.forEach(element => {
    console.log(element);
});

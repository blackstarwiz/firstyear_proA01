let Email = "jason.meulemans@hotmail.com";
let naam = "";
let basis = "";

for(let i = 0; i < Email.length; i++){
    let letter = Email.substring(i,i+1);//elke iteratie zal het een letter vastnemen
    basis += letter;
    
    if(letter == "@"){
        naam = basis;
        basis = "";
    }
    
};


let eind_resultaat = `De eigenaar van ${Email} is ${naam.substring(0,naam.length-1).replace("."," ").toUpperCase()}`;

console.log(eind_resultaat)
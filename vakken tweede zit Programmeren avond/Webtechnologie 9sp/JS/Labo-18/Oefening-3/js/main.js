"use strict";

function createCalculator(bewerking){
    if(bewerking === "add"){
        let getal1 = Number.parseInt (prompt('Geef een getal in:'));
        let getal2 = Number.parseInt (prompt('Geef een getal in:'));
        add(getal1,getal2,result);
    }else{
        let getal1 = Number.parseInt (prompt('Geef een getal in:'));
        let getal2 = Number.parseInt (prompt('Geef een getal in:'));
        multiply(getal1,getal2,result);
    };
};

function add(getal1, getal2){
    let res = getal1 + getal2;
    result(res);
}

function multiply(getal1, getal2){
    let res = getal1 * getal2;
    result(res);
}

function result(res){
    console.log(`Het resultaat is: ${res}`);
}

createCalculator("add");
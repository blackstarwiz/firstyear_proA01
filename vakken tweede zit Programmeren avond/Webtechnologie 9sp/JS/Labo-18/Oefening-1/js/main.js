"use strict";

function calculate(getal1, getal2, callback){

    let res = getal1 + getal2;

    callback(res);
};

function displayConsole(res){
    console.log(res);
};


calculate(12,5,displayConsole);
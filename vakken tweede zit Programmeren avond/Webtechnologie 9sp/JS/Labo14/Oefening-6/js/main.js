"use strict";

const aantalGetallen = 10;

function fibonacciGetallen(aantal){
    let fibboArray = [];
    let prev = 0;
    let cur = 1;
    
    for(let i = 0; i < aantal; ++i){
        fibboArray.push(prev);

        let next = prev + cur;

        prev = cur;
        cur = next

    }
    console.log(fibboArray);
};

fibonacciGetallen(aantalGetallen)

"use strict";

const grens = 100;

function somEvenGetallen(grensinput){
    let result = 0;

    for(let i = 1; i < grensinput; i++){
        if( i%2 === 0 ){
            result += i;
        }else{
            continue
        }
    }
    return result;
}

console.log(somEvenGetallen(grens));
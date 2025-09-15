"use strict";
let array = { 
    array_one:[10,84,68,71,35],
    array_two: [88,91,75,23,47],
    mergeArray: []
};


function mergeArray(array1,array2,output){
    let comb_array = [...array1,...array2];
    output(comb_array);
};

function result(res){
    console.log(`Array one: ${array.array_one}`);
    console.log(`Array two: ${array.array_two}`)
    console.log(`Merge array: ${res}`);
}

mergeArray(array.array_one,array.array_two,result);
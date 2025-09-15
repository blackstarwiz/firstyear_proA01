"use strict";
let original_Array  = "./js/dieren.json";

let sorted_array = {};

function sortByAttribute(object, attribute){

    fetch(object)
    .then(res => res.json())
    .then(dier => {
        console.log(dier)
        Object.entries(dier).forEach(([key,value])=>{
            value.
        })
    })
};
sortByAttribute(original_Array, "name");
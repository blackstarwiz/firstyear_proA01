"use strict";

import dieren from "./dieren.json" with {type:'json'};

let ol = document.querySelector("#lijst_dieren");
let input = document.querySelector("#cijfer_dier");
let verzend = document.querySelector("#verzenden");
let info_dieren = document.querySelector("#info_dieren");

let animalData = []

dieren.forEach(dier =>{
    animalData.push(dier.name)
});

function getAnimalList(animalArray){
    for(let i =0; i < animalArray.length; i++){
        let li = document.createElement("li");

        li.appendChild(document.createTextNode(` ${animalArray[i]}`));

        ol.appendChild(li)
    }
};

getAnimalList(animalData);

verzend.addEventListener('click', ()=>{
    info_dieren.innerHTML = "";
    let nummer_dier = input.value;
    info_dieren.innerHTML = dieren[nummer_dier-1].info;
});
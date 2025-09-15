"use strict";



let button = document.getElementById("buttonVrienden");
let input = document.getElementById("vrienden");
let ul = document.getElementById("lijst");
let li = document.createElement("li");


button.addEventListener('click', ()=>{
    let aantal = Number.parseInt(input.value);
    
    for(let i = 1; i <= aantal; i++){
        let naam = prompt("Geef naam van je vriend in:");
        

        li.appendChild(document.createTextNode(naam));

        ul.appendChild(li);
    }
})
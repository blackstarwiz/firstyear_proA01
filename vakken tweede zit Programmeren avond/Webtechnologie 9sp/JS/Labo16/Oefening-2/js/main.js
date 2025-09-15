"use strict";
let h1 = document.querySelector("h1");
let li = document.createElement("li");
let ol = document.getElementById("lijst_hobbies");

fetch('./js/person.json')
.then(res => res.json())
.then(person => {
    Object.entries(person).forEach(([key,value]) =>{
        
        if(key === "firstname" || key === "lastname"){
            h1.appendChild(document.createTextNode(value));
            if(key === "firstname"){
                h1.appendChild(document.createTextNode(" "));
            };
        }else if(key === "hobbies"){
            
            value.forEach(hobby => {
                let li = document.createElement("li");
                li.appendChild(document.createTextNode(hobby));

                ol.appendChild(li);
            })
        }
    })
});


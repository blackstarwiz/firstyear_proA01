"use strict";

function faculteit(){
    let geheelgetal = false;
    let getal = 0;


    do{
        getal = prompt("geef geheel getal in max: 100")
        if(Number.isInteger(getal)){
            geheelgetal = true;
            
        }else{

            alert("Is geen geheel getal! Voer geheel getal in vb: 10,6,8,145");
        }

    }while(!geheelgetal);
    
    return result;
};

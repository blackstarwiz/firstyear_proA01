"use strict";


function personInfo(firstName,lastName, Age){
    const letterFirstName = firstName.substring(0,1);
    let letterLastName = lastName.substring(0,1);

    let newFirstName = firstName
    .split('')
    .map((el, index) =>{
        
        if(index === 0){
            el = letterFirstName.toUpperCase();
            return el;
        }else{
            return el;
        }
        
    })
    .join('');

    let newLastName = lastName
    .split('')
    .map((el, index) =>
        {
            if(index === 0){
                el = letterLastName.toUpperCase();
                return el;
            }else{
                return el;
            }
        })
    .join('');

    let awnser = `U bent ${newFirstName} ${newLastName} en u bent ${Age} jaar oud`;

    return awnser;
};

let result = personInfo("jason","meulemans",27);

console.log(result);
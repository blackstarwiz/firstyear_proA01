"use strict";

import * as multiply from '../../Oefening-2/js/main.js';


async function multiplyFun(){
    const firstresult = await multiply.multiply(10,2);
    console.log("first result: " + firstresult);

    for(let i=1;i <= 5; i++){
        try{
            let finalresult = await multiply.multiply(firstresult,i)

            if(finalresult == 60){
                throw new Error("Waarde is niet wat we zoeken");
            }

            console.log(`result ${i}: ${finalresult}`);
        }catch(err){
            console.log("er is iets mis gegaan:",err.message);
        }
    }
    
}

multiplyFun();


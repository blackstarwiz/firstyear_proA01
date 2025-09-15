"use strict";

import * as multiply from '../../Oefening-2/js/main.js';


async function multiplyFun(){
    const firstresult = await multiply.multiply(10,2);
    console.log("first result: " + firstresult);

    for(let i=1;i <= 5; i++){
        let finalresult = await multiply.multiply(firstresult,i)
        .then(res =>{

            if(res === 60){
                    throw new Error("help ik werk niet");
            }else{
                return `result ${i}: ${res}`;
            }
        })
        .catch(fout => {
            return fout;
        });
        console.log(finalresult);
    }
    
}

multiplyFun();

// multiply.multiply(10,2)
// .then(result =>{
    
//     for(let i=1;i <= 5; i++){
//         multiply.multiply(result,i)
//             .then(result =>{
//                 console.log(`result ${i}: ${result}`)
//             });
//     }
// });
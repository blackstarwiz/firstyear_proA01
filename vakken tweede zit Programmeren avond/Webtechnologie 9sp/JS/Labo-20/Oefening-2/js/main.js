"use strict";

export const multiply = (number1, number2) => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            return resolve(number1 * number2);
        }, 2000);
    });
};

// multiply(5)
// .then((res) => {
//     console.log(res)
// })
// .catch((fout) =>{
//     console.log(fout)
// });


let firstThirteen_A_M = "abcdefghijklm";
let lastThirteen_N_Z = "nopqrstuvwxyz";

let encoded = "uryyb";
let decoded = "";

function Caesar_Rotation_Decoder(encodedInput){
    let inputWordArray = encoded.split("");
    let firstThirteen_A_M_array = firstThirteen_A_M.split("");
    let lastThirteen_N_Z_array = lastThirteen_N_Z.split("");
  
    inputWordArray.map(element =>{
        A_M_finder = firstThirteen_A_M_array.includes(element);

        if(A_M_finder){
            let posChange = firstThirteen_A_M_array.indexOf(element);
            let change = lastThirteen_N_Z_array[posChange].toString();
            decoded += change;
        }else{
            let posChange = lastThirteen_N_Z_array.indexOf(element);
            let change = firstThirteen_A_M_array[posChange].toString();
            decoded += change;
        }
    })

    console.log(decoded)
}

Caesar_Rotation_Decoder(encoded);
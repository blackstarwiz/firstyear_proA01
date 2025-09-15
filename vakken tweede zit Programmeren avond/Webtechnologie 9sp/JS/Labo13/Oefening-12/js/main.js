let Email = "jason.meulemans@hotmail.com";
let naam = "";
let basis = "";


function NameFinderEmail (email){
    for(let i = 0; i < email.length; i++){
    let letter = email.substring(i,i+1);//elke iteratie zal het een letter vastnemen
    basis += letter;
    
        if(letter == "@"){
            return basis;
        }
    };
}

naam = NameFinderEmail(Email);


let eind_resultaat = `De eigenaar van ${Email} is ${naam.substring(0,naam.length-1).replace("."," ").toUpperCase()}`;

console.log(eind_resultaat);



function ShortName(name){
    let arraynaam = name.substring(0,name.length-1).split(".");
    let shortName = "";

    for(let i = 0; i <= arraynaam.length; i++){

        if(i === 0){
            shortName += `${arraynaam[i].substring(0,1).toUpperCase()}. `;
        }else{
            shortName += arraynaam[i].substring(0,1).toUpperCase();
            shortName += arraynaam[i].substring(1,arraynaam[i].length);
            break;
        }
    }
    let resultaat = `de naam "${arraynaam[0]} ${arraynaam[1]}" zal worden afgekort als "${shortName}"`;

    return resultaat;
}

console.log(ShortName(naam));
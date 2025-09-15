let start_uur = 12;

let opening_tekst = `Het is nu ${start_uur} uur.`;

let toevoegen_uren = 33;

let resultaat_uur = start_uur;

for(let i = 1; i < toevoegen_uren; i++){
    resultaat_uur += 1;
        if(resultaat_uur % 24 === 0){
            resultaat_uur = 1;
        }else{
            continue;
        };
};

let resultaat_tekst = `Over ${toevoegen_uren} is het ${resultaat_uur} uur.`;

console.log(opening_tekst);
console.log(resultaat_tekst);
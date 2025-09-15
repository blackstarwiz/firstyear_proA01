let text = "De winnende lottonummers van deze week: 05,09,13,18,27,44. Proficiat aan alle deelnemers.";

let maxLenght2 = "";
let LottoNumbers = "";

for(let lengteTekst = 0; lengteTekst < text.length;lengteTekst++){
    
    let testInput = text.substring(lengteTekst,lengteTekst+1);

    if(parseInt(testInput)){
        maxLenght2 += testInput.toString();
    }else if (parseInt(testInput) === 0){
        maxLenght2 += testInput.toString();
    }else{
        continue
    }

    if(maxLenght2.length === 2){
        LottoNumbers += maxLenght2 + "|";
        maxLenght2 = "";
    }else{
        continue;
    }
}
console.log(LottoNumbers.substring(0,LottoNumbers.length-1))
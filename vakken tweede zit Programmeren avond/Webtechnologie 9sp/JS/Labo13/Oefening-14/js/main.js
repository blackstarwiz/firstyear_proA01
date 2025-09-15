let text = "Dit is een test. Deze tekst kan lang worden";


function textBox(textinput){

    let textLength = text.length + 10;
    let topPart = "";
    let middlePart = "";
    let bottomPart = "";

    for(let i = 0; i < textLength; i++){
       
        if(i === 5){
            topPart += "/----";
            middlePart += " |   ";
            bottomPart += '\\----';
        }else if(i === textLength-6){
            middlePart += text;
        }else if(i === textLength-5){
            topPart += '------\\';
            middlePart += "   | ";
            bottomPart += "------/";
        }else if( i < 5){
            continue;
        }else if(i > textLength-5){
            continue;
        }else{
            topPart += "-";
            bottomPart += "-";
        }
    }

    console.log(topPart);
    console.log(middlePart);
    console.log(bottomPart);
}

textBox(text);
let cards = document.querySelectorAll(".card");
let button = document.querySelector("button");
let selectedPersonCards = [];

cards.forEach(card => {
    card.addEventListener('click',()=>{
       if(!selectedPersonCards.includes(card)){

            if(selectedPersonCards.length != 2){
                card.classList.add("selected");
                selectedPersonCards.push(card);
            }
            console.log(selectedPersonCards)
       }else{
            card.classList.remove("selected");
            let geklikt = selectedPersonCards.indexOf(card);

            for(let i = 0; i < selectedPersonCards.length; i++){
                if(i != geklikt){
                    let newSelected = [];
                    newSelected.push(selectedPersonCards[i]);
                    selectedPersonCards = newSelected
                }
            }
       };
        
    })
})
button.addEventListener('click', ()=>{
    if(selectedPersonCards.length == 0){
        alert("Minstens 1 persoon selecteren a.u.b")
    }else{
        alert("je selectie werd bevestigd")
    }
})
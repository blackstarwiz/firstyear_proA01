let form = document.querySelector("#contact_form");
let checker_box = document.querySelector("#checker_box");

console.log(form);

form.button.addEventListener('click',()=>{
    
    let counterFilled = 0;
    checker_box.innerHTML = " ";

    for(let i = 0; i < form.length; i++){
        
        if(form[i].id === 'naam' || form[i].id === 'mail' || form[i].id === 'bericht'){
            if(form[i].value === ""){
                
                let h3 = document.createElement("h3");
                    h3.appendChild(document.createTextNode(`veld van ${form[i].id} is leeg: aub vul je ${form[i].id} in!`));
                    h3.style.color = "red";
                checker_box.appendChild(h3);

                console.log(`veld van ${form[i].id} is leeg: aub vul je ${form[i].id} in!`)
            }else{
                counterFilled++;
            }
        }else if(counterFilled === 3){
            let h3 = document.createElement("h3");
                h3.appendChild(document.createTextNode("alles is goed ontvangen: Toppie!"));
                h3.style.color = "green";
            checker_box.appendChild(h3);
            console.log("alles is goed ontvangen: Toppie!");
            let text = `je hebt een bericht verzonden:\n\n   Naam: ${form.naam.value}\n   Email: ${form.email.value}\n   Bericht: ${form.bericht.value}`
            alert(text);
        }
        
        
    }
})
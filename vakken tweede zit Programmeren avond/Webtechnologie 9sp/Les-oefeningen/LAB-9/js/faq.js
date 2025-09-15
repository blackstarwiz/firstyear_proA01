let buttons = document.querySelectorAll(".collapsible");
console.log(buttons);


buttons.forEach(button =>{
    button.addEventListener('click',()=>{
        button.classList.toggle("active");
        let div = button.nextElementSibling;
        
        if(div.style.display === ""){
            div.style.display = "block"
        }else{
             div.style.display = ""
        }
    })
})
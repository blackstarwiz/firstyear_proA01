let url = "https://raw.githubusercontent.com/PhilippeSchraepen/json-host/refs/heads/main/programming-languages.json";
let talenSyn = [];
let rank = [];
let ul = document.querySelector("#target")

fetch(url)
.then(res => res.json())
.then(talen => {
    talen.sort(talen.popularity_rank,talen.popularity_rank);
    for(let i=0; i < talen.length; i++){
        talenSyn.push(talen[i]);
    }
  
   talenSyn.sort((a,b)=>{
        if(a.popularity_rank < b.popularity_rank){
            return -1
        }else if(a.popularity_rank === b.popularity_rank){
            return 0;
        }else{
            return 1;
        }
   });


   for(let i = 0;i < talenSyn.length;i++){
        let li = document.createElement("li");
        li.appendChild(document.createTextNode(`${talenSyn[i].popularity_rank} - ${talenSyn[i].name}`));
        ul.appendChild(li);
   }
})
"use strict";

fetch('https://pokeapi.co/api/v2/')
  .then(response => response.json())
  .then(data => {
      console.log(data)
      fetch(data.generation)
      .then(res => res.json())
      .then(generations => {

        console.log(generations);
        
        let generationUrl = generations.results.forEach(gen => {
          console.log(gen.name);
        });;
        
       
      })
      .catch(err => console.log("error:", err))
  })
  .catch(err => console.log("error:", err));
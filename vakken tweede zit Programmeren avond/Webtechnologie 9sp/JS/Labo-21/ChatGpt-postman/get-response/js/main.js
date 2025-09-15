"use strict";

fetch('https://jsonplaceholder.typicode.com/posts')
  .then(response => response.json())
  .then(data => {
    data.forEach(subarray => {
        if(subarray.id == 6){
            console.log(subarray)
        }
    });
  })
  .catch(error => console.error('Error:', error));
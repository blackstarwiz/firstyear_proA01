"use strict";
let ol = document.querySelector("#lijst_todos");

fetch("./js/todos.json")
.then(res => res.json())
.then(todo => {
    todo.forEach(el => {
        if(el.completed){
            let li = document.createElement("li");
            li.appendChild(document.createTextNode(el.title));

            ol.appendChild(li)
        }
    });
})


"use strict";

fetch("https://jsonplaceholder.typicode.com/posts", {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify({
        title: 'Mijn eerste post',
        body: 'Dit is een testbericht',
        userId: 1
    })
})
.catch(res => res.json())
.then(json => console.log(json.title))
.catch(err => console.log("Error: ", err));

//! JSONPLACEHOLDER


//?TEST
fetch('https://jsonplaceholder.typicode.com/posts/1')
  .then((response) => response.json())
  .then((json) => console.log(json));


//?POST
  fetch('https://jsonplaceholder.typicode.com/posts', {
    method: 'POST',
    body: JSON.stringify({
      title: 'foo',
      body: 'bar',
      userId: 1,
    }),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  })
    .then((response) => response.json())
    .then((json) => console.log(json));

//!POKEAPI 

//?EndPoint => Generation

fetch('https://pokeapi.co/api/v2/generation/generation-i')
.then((response) => response.json())
.then((json) => console.log(json));
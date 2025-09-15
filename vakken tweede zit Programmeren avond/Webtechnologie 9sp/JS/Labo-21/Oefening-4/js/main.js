"use strict";

let url = 'https://newsapi.org/v2/top-headlines?country=us';
let option = {
  method: "GET",
  headers: {
    'X-Api-Key': "12911f0eac1f454a9b9ad42b4f45b57d"
  }
}

fetch(url, option)
.then(res => res.json())
.then(data => {
  console.log(data);

  data.articles.forEach(article => {
    console.log(article.title);
  });
});
const socialLinks = ["https://www.youtube.com", "https://www.instagram.com/", "https://www.facebook.com/", "https://x.com/"];
let links = document.querySelectorAll(".links");

for(let i = 0; i < links.length; i++){
    links[i].addEventListener('click', ()=>{
        let li = links[i].children;
        console.log(li[0].setAttribute("href", socialLinks[i]))
    })
}
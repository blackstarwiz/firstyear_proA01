    //ik pak alle a elementen
    let activeLink = document.getElementsByClassName("navi");
    //ik haal de pagina op die opstaat in de live server en split alles en pop het laatste eraf om als variablen te hebben
    let currentpage = window.location.pathname.split("/").pop();

    console.log(activeLink);

    for(let i=0;i<activeLink.length;i++){
        //de page is de gene die we willen aanpassen als we erop klikken, hier doen we het zelfde als erboven met split en pop
        let page = activeLink[i].getAttribute("href").split("/").pop(); ;
        console.log(currentpage)
        console.log(page);
        //we vergelijken de currentpage met page en geven deze de class active om de styling toetevoegen
        if(page === currentpage){
            activeLink[i].classList.add("active");
        }
        
    }
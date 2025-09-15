"use strict";


function rasterGenerator(kolommen,rijen,symbol){
    let raster = "";

    for(let rij= 0; rij < rijen; rij++){
        
        for(let kolom = 0; kolom < kolommen ; kolom++){
            raster += `${symbol} `;
        }
        raster = raster.substring(0,raster.length-1);
        raster += '\n';
    }

    return raster;
}

console.log(rasterGenerator(10,5,"2"));
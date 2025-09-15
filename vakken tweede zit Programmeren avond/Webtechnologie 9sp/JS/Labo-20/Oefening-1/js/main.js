"use strict";

Notification.requestPermission()
    .then((permission) => {
        if (permission === "granted") {
            alert("hello")
            new Notification("Hello!");
        }else{
            alert("bye")
            new Notification("Bye")
        }
    });
window.addEventListener('scroll', () => {
    const header = document.querySelector('#header-home');
    if (window.scrollY > 50) {
        header.style.backgroundColor = 'rgb(66, 66, 66)';
        header.style.borderBottom = 'solid rgb(212, 73, 161) 0.25rem';
    } else {
        header.style.backgroundColor = 'transparent';
        header.style.borderBottom = 'transparent'
    }
});

window.addEventListener('DOMContentLoaded', () => {
    const situeeringElement = document.querySelector("#situeering");
    if (situeeringElement) {
        situeeringElement.remove();
    }
});
function updateLoadingBar() {
    const scrollPosition = window.scrollY;
    const windowHeight = window.innerHeight;
    const documentHeight = document.body.clientHeight;
    const progress = (scrollPosition / (documentHeight - windowHeight)) * 100;
    document.getElementById('loading-bar').style.width = progress + '%';
}

window.addEventListener('scroll', updateLoadingBar);

let isNightLightOn = false;

function toggleNightLight() {
    const button = document.getElementById('ball');
    isNightLightOn = !isNightLightOn;
    
    if (isNightLightOn) {
        button.style.transform = 'translateY(-10px)';
        document.body.style.backgroundColor = '#FFFFFF'; 
        audio.play();
    } else {
        button.style.transform = 'translateY(0)';
        document.body.style.backgroundColor = '#EDDBC0'; 
        audio2.play();
    }
}

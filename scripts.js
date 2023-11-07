function updateLoadingBar() {
    const scrollPosition = window.scrollY;
    const windowHeight = window.innerHeight;
    const documentHeight = document.body.clientHeight;
    const progress = (scrollPosition / (documentHeight - windowHeight)) * 100;
    document.getElementById('loading-bar').style.width = progress + '%';
}

window.addEventListener('scroll', updateLoadingBar);
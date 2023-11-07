document.addEventListener("DOMContentLoaded", function() {
    const backgroundColors = ["#FFEBD7", "#D7E4F3", "#E4D7F3"];

    function setRandomBackgroundColor() {
        const randomIndex = Math.floor(Math.random() * backgroundColors.length);
        document.body.style.backgroundColor = backgroundColors[randomIndex];
    }
    setRandomBackgroundColor();
});
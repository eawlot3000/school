let slideIndex = 0;
showSlide(slideIndex);

function showSlide(n) {
  let slides = document.getElementsByClassName("slide");
  let prev = document.getElementsByClassName("prev")[0];
  let next = document.getElementsByClassName("next")[0];
  
  // Hide all slides
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  
  // Show current slide
  slides[n].style.display = "block";
  
  // Disable prev button on first slide, next button on last slide
  if (n === 0) {
    prev.disabled = true;
  } else {
    prev.disabled = false;
  }
  if (n === slides.length - 1) {
    next.disabled = true;
  } else {
    next.disabled = false;
  }
}

function prevSlide() {
  slideIndex--;
  showSlide(slideIndex);
}

function nextSlide() {
  slideIndex++;
  showSlide(slideIndex);
}

document.getElementsByClassName("prev")[0].addEventListener("click", prevSlide);
document.getElementsByClassName("next")[0].addEventListener("click", nextSlide);






// loop first part text content colors!
const ul = document.querySelector('.text_2');
const text = ul.getElementsByTagName('p');
let index = 0;

// Array of hex color values
//const colors = ['#ADD8E6', '#B0E0E6', '#87CEEB', '#89CFF0', '#6495ED', '#4682B4', '#4169E1', '#1E90FF', '#0000CD', '#000080', '#00008B'];
const colors = [
  '#ADD8E6', '#B0E0E6', '#87CEEB', '#89CFF0', '#6495ED', '#4682B4', '#4169E1', '#1E90FF', '#0000CD', '#000080',
  '#00008B', '#00BFFF', '#87CEFA', '#87CEFF', '#6495ED', '#008B8B', '#0000FF', '#1E90FF', '#00BFFF', '#4169E1',
  '#87CEEB', '#87CEFA', '#00CED1', '#ADD8E6', '#B0C4DE', '#87CEEB', '#87CEFA', '#6495ED', '#00BFFF', '#1E90FF',
  '#4169E1', '#7B68EE', '#6A5ACD', '#483D8B', '#4169E1', '#1E90FF', '#00BFFF', '#87CEEB', '#87CEFA', '#00CED1',
  '#00BFFF', '#1E90FF', '#6495ED', '#4169E1', '#6A5ACD', '#483D8B', '#7B68EE', '#483D8B', '#1E90FF', '#00BFFF',
  '#6495ED', '#4169E1', '#6A5ACD', '#483D8B', '#7B68EE', '#0000FF', '#0000CD', '#191970', '#00008B', '#000080',
  '#4169E1', '#1E90FF', '#87CEEB', '#6495ED', '#4682B4', '#0000CD', '#191970', '#00008B', '#000080', '#6A5ACD',
  '#483D8B', '#7B68EE', '#4B0082', '#483D8B', '#1E90FF', '#0000CD', '#00008B', '#000080', '#6495ED', '#4169E1',
  '#6A5ACD', '#483D8B', '#7B68EE', '#1E90FF', '#0000FF', '#191970', '#00008B', '#000080', '#4169E1', '#1E90FF',
  '#6495ED', '#0000CD', '#00008B', '#000080'
];



let intervalID = null;

function startInterval() {
  intervalID = setInterval(function() {
    const color = colors[index % colors.length];
    for (let i = 0; i < text.length; i++) {
      text[i].style.color = color;
    }
    index++;
  }, 200);
}

startInterval();

const checkbox = document.getElementById("color-switch");
checkbox.addEventListener("change", function () {
  if (this.checked) {
    clearInterval(intervalID);
    for (let i = 0; i < text.length; i++) {
      text[i].style.color = "white";
    }
  } else {
    startInterval();
  }
});



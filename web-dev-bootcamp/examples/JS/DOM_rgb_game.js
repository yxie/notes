var colors = genColor(6);
var squares = document.querySelectorAll(".square");
var pickedColor = pickColor();
var colorDisplay = document.getElementById("colorDisplay");
var messageDisplay = document.querySelector("#message");
var h1 = document.querySelector("h1");
var resetButton = document.querySelector("#reset");
var modeButtons = document.querySelectorAll(".mode");
var currentMode = "Hard";
var colorNums = {
  "Hard": 6,
  "Easy": 3
}

init();

function init() {
  setupSquares();
  setupButtons();
  resetGame(currentMode);
}

function setupSquares() {
  for(var i=0; i<squares.length; i++) {
    // add click listeners
    squares[i].addEventListener("click", function(){
      // grab color of clicked square
      clickedColor = this.style.backgroundColor;
      // compare colors
      if(clickedColor === pickedColor) {
        messageDisplay.textContent = "Correct!";
        changeColor(pickedColor);
        h1.style.backgroundColor = pickedColor;
      } else {
        this.style.backgroundColor = "#232323";
        messageDisplay.textContent = "Try Again!";
      }
    });
  }
}

function setupButtons() {
  //mode buttons
  for(var i=0; i<modeButtons.length; i++) {
    modeButtons[i].addEventListener("click", function() {
      currentMode = this.textContent;
      resetGame(currentMode);
    })
  }
  //reset button
  resetButton.addEventListener("click", function() {
    resetGame(currentMode);
  });
}

function resetGame(currentMode) {
  colors = genColor(colorNums[currentMode]);
  for(var i=0; i<modeButtons.length; i++) {
    if(modeButtons[i].textContent === currentMode) {
      modeButtons[i].classList.add("selected");
    } else {
      modeButtons[i].classList.remove("selected");
    }
  }
  pickedColor = pickColor();
  colorDisplay.textContent = pickedColor;
  for(var i=0; i<squares.length; i++) {
    if(colors[i]) {
      squares[i].style.backgroundColor = colors[i]; //backgroundColor works for all browser
      squares[i].style.display = "initial";
    } else {
      squares[i].style.display = "none"; //hide three bottom buttons, click it does not trigger anything
    }
  }
  h1.style.backgroundColor = "steelBlue";
  messageDisplay.textContent = "";
}

function changeColor(color) {
  for(var i=0; i<squares.length; i++) {
    squares[i].style.backgroundColor = color;
  }
}

function pickColor() {
  var rand = Math.floor(Math.random() * colors.length); //pick a random number
  return colors[rand];
}

function genColor(num) {
  var arr = [];
  for(var i=0; i<num; i++) {
    arr.push(randomColor());
  }
  return arr;
}

function randomColor() {
  var r = Math.floor(Math.random() * 256);
  var g = Math.floor(Math.random() * 256);
  var b = Math.floor(Math.random() * 256);
  return "rgb(" + String(r) + ", " + String(g) + ", " + String(b) + ")";
}

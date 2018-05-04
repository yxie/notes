var btn1 = document.querySelector("#btn1");
var btn2 = document.querySelector("#btn2");
var reset = document.querySelector("#reset");

var p1Score = 0;
var p2Score = 0;
var maxScore = 5;

var p1Display = document.querySelector("#score1");
var p2Display = document.querySelector("#score2");
var maxScoreDisplay = document.querySelector("#scoreMax");

var numInput = document.querySelector("input");

btn1.addEventListener("click", function(){
  if(p1Score >= maxScore || p2Score >= maxScore) {
      return null;
  }
  p1Score++;
  p1Display.textContent = p1Score;
  if(p1Score === maxScore) {
    p1Display.classList.add("winner");
  }
});

btn2.addEventListener("click", function(){
  if(p1Score >= maxScore || p2Score >= maxScore) {
      return null;
  }
  p2Score++;
  p2Display.textContent = p2Score;
  if(p2Score === maxScore) {
    p2Display.classList.add("winner");
  }
});

reset.addEventListener("click", function(){
  resetScore();
});

numInput.addEventListener("change", function(){
  resetScore();
  maxScoreDisplay.textContent = this.value; //this === numInput
  maxScore = Number(this.value);
});

function resetScore() {
  p1Display.textContent = 0;
  p2Display.textContent = 0;
  p1Display.classList.remove("winner");
  p2Display.classList.remove("winner");
  p1Score = 0;
  p2Score = 0;
}

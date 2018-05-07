# Advanced DOM

## DOM events
* Make things interactive (button, hover, drag/drop, press enter key...)
* Process: select an element and then add an event **listener**
* Syntax: `element.addEventListener(type, functionToCall);`
* Event reference: https://developer.mozilla.org/en-US/docs/Web/Events
* click
  ```javascript
  var button = document.querySelector("button");
  button.addEventListener("click", function() {
    console.log("Someone clicks the button.");
  });

  var h1 = document.querySelector("h1");
  h1.addEventListener("click", function(){
  	alert("h1 was clicked");
  });
  ```
* change
  ```javascript
  numInput.addEventListener("change", function(){
    resetScore();
    maxScoreDisplay.textContent = this.value; //this === numInput
    maxScore = Number(this.value);
  });
  ```
* mouseover, mouseout
  ```javascript
  var h1 = document.querySelector("h1");
  h1.addEventListener("mouseover", function(){
    h1.style.color = "green";
  });
  h1.addEventListener("mouseout", function(){
    h1.style.color = "black";
  });
  ```

## RBG color guessing game

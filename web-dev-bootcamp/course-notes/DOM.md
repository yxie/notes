# DOM (Document Object Model)
* Interface between JS and HTML+CSS
* It's how we can use JS to make things interactive
* `console.dir(document)`

## Select and Manipulate
* Write JS to select and manipulate
  ```javascript
  var h1 = document.querySelector("h1");
  h1.style.color = "pink";
  ```
  More example:
  ```javascript
  var body = document.querySelector("body");
  var isBlue = false;
  setInterval(function(){
    if (isBlue) {
      body.style.background = "white";
    } else {
      body.style.background = "blue";
    }
    isBlue = !isBlue;
  }, 1000);
  ```
* DOM methods
  * document.URL
  * document.links
  * document.body
  * document.head


## Important selector methods
* `getElementById`: takes a string argument and returns the one element with a matching ID
  ```javascript
  var tag = document.getElementById("highlight");
  // return an JS object
  // use document.dir(tag) to see the returned object
  ```
* `getElementByClassName`: takes a string argument and returns a list of elements that have a matching class
  ```javascript
  var tags = document.getElementByClassName("bolded");
  // return array-like object, not array
  // lack some array methods, such as forEach()
  ```
* `getElementByTagName`: returns a list of all elements of a given tag name
  ```javascript
  var tags = document.getElementsByTagName("li");
  ```
* `querySelector`: returns the **first** element that matches a given CSS-style selector
  ```javascript
  var tag = document.querySelector("#highlight");
  var tag = document.querySelector(".bolded");
  var tag = document.querySelector("li a.special");
  ```
* `querySelectorAll`" returns all elements that match a given CSS-style selector
  ```javascript
  var li = document.querySelectorAll("li");
  ```

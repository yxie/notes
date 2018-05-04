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
* `getElementsByClassName`: takes a string argument and returns a list of elements that have a matching class
  ```javascript
  var tags = document.getElementByClassName("bolded");
  // return array-like object, not array
  // lack some array methods, such as forEach()
  ```
* `getElementsByTagName`: returns a list of all elements of a given tag name
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

## Manipulation
### Manipulate styles
* Style property
  ```javascript
  var tag = document.getElementById("highlight")
  tag.style.color = "blue";
  tag.style.border = "10px solid red";
  tag.style.fontSize = "70px";
  tag.style.background = "yellow";
  tag.style.marginTop = "200px";
  ```
* Separation of concerns (better than manipulating the styles directly)
  * Define a CSS class
    ```css
    .another-class {
      color: purple;
      font-size: 76px;
    }
    ```
  * Toggle it on and off with JS
    ```javascript
    var tag = document.querySelector("h1");
    //add: turns on the style
    tag.classList.add("another-class");
    //remove: turns off the style
    tag.classList.remove("another-class");
    //toggle: toggle the style
    tag.classList.toggle("another-class");
    ```

### Manipulate text and content
* textContent
  ```javascript
  var tag = document.querySelector("p");
  //extract and alter the text, html tags inside the text will be erased
  tag.textContent = "blah blah..";
  ```
* innerHTML
  ```javascript
  var tag = document.querySelector("p");
  tag.innerHTML //preserve the html tags inside the text
  ```

### Manipulate attributes
* getAttribute, setAttribute: read and write attributes like `src` or `href`
  ```javascript
  var link = document.querySelector("a");
  link.getAttribute("href");
  link.setAttribute("href", "www.dog.com");
  ```

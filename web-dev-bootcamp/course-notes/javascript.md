# JavaScript
## Objectives
* Run JS in Chrome developer console
* List 5 JS primitives/datatypes
* Define variables with `var` keyword
* Built-in codes: console.log, alert, prompt
* Control flow: boolean logic, conditions
* Functions
* Array
* Object

## Chrome JS developer console
* Writing JS inside console
* Toggle JS console: `cmd + j`, `ctrl + shift + j`

## Write JS in a seperate file
* Include JS in html:
  ```
  <script type="text/javascript" src="../JS/script.js">
  ```

## Primitive data types
* Numbers
* Strings
* Booleans
* null
* undefined

## Variables
* `var` keyword: `var VarName = VarValue;`
* Coding style: JS variables should be camelCase!
  * camelCase
  * snake_case
  * kebab-case

## Null and undefined
* Undefined: variables declared but not initialized, empty and doesn't have a value yet
* Null: explicitly nothing

## Alert, prompt, console.log
* Alert: create an alert window, `alert("Hello world!");`
* Console.log: print in JS console, `console.log("Hello world!")`
* Prompt: create a question window and get answer, `userName = prompt("What's is your name?");`

## Boolean logic
* False: `false, 0, "", null, undefined, NaN`
* Comparison
  * `==`: equal to
  * `===`: euqal value and type, much safer
  * Examples:
    ```
    var x = 99;
    x == "99"; //true
    x === "99"; //false

    var y = null;
    y == undefined //true
    y === undefined //false

    true == "1" //true
    0 == false //true
    null == undefined //true
    NaN == NaN //false
    ```
* Logical operators: `&&`, `||`, `!`

## Conditions
* if, else if, else
* while loop
* for loop

## Functions
* `function` keyword
* Arguments, don't need to use `var` keyword
* function declaration
  ```javascript
  function capitalize(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
  }
  ```
  function expression
  ```javascript
  var capitalize = function(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
  }
  ```
* Scope
  * Variables defined outside a function can be used inside a function. The opposite is not true.
  * Variables changed (but not re-defined) inside a function will keep the new value outside the function.
* Higher order function: pass function to another function

## Array
* Initialization:
  * `var friends = ["a", "b", "c"];`
  * `var friends = new Array();` or `var friends = [];`
* Index starts from 0
* Array can have variables of different types: `arr = [4, true, "s"];`
* Array has length property: `friends.length`
* Array methods: check MDN for a full list
  * push and pop: add elements to end
    ```
    friends.push("d");
    friends.pop();
    ```
  * shift and unshift: add elements to front
  * indexOf: find the **first** index of an item in an array, return -1 if element is not present
  * slice(start, end): copy a portion, end not included:
    ```
    friends.slice(1, 2) //return ["b"]
    ```
* Array iteration
  * For loop
    ```javascript
    var colors = ["r", "b", "y"];
    for (var i = 0; i < colors.length; i++) {
      console.log(colors[i]);
    }
    ```
  * Foreach (more common and easier to use)
    ```javascript
    colors.forEach(
      function(color){ //color is a placeholder
        console.log(color);
      }
    );
    ```
    or
    ```javascript
    function printColor(color) {
      console.log(color);
    }
    colors.forEach(printColor);
    ```

## Object
* format: `object = {property: values}`
* creating object
  ``` javascript
  //make an empty object and then add to it
  var person = {}; // var person = new Object();
  person.name = "abc";
  person.age = 21;
  person.city = "LA";

  //all at once
  var person = {
    name: "abc",
    age: 21,
    city: "LA"
  };
  ```
* object properties have no order
* retrieve data: `person.name` or `person["name"]`
  * Cannot use dot notation if the property starts with a number
    ```javascript
    someObject.1blah //INVALID
    someObject["1blah"] //VALID!
    ```
  * Can lookup using a variable with bracket notation
    ```javascript
    var str = "name";
    someObject.str //INVALID
    someObject[str] //VALID
    ```
  * Cannot use dot notation for property names with spaces
    ```javascript
    someObject.fav color //INVALID
    someObject["fav color"] //VALID
    ```
* methods
  ```javascript
  var obj = {
    name: "abc",
    age: 45,
    isCool: false,
    friends: ["c", "d"],
    add: function(x,y){
      return x + y;
    }
  }
  ```

## underscore.js

## Keyword `this`

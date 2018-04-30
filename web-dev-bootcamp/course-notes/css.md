#CSS (Cascading Style Sheet)
* General rules of CSS
* Include CSS in HTML
* Select elements by tag name, class and ID
* Style elements with basic properties
* Use Chrome CSS inspector to debug

## Include CSS in HTML
`<link rel="stylesheet" type="text/css" href="../css/app.css">`

## General Rule
`selector {property: value;}`. For example, `h1 {color: purple;}`

### color
* Text: `red`
* Hexadecimal: `#FF0000`
* RGB: `rgb(255,0,0)`
* RGBA: `rgba(R,G,B,transparency)`, transparency ranges from `0.0-1.0`
* Color picker

### background
* `background: pink;`
* `background: url(url_to_image)`, `background-repeat: no-repeat;`, `background-size: cover;`

### border
* `border: width color style`

## CSS Selectors
* Element/Type Selector: `p {color: yellow;}`
* ID Selector (ID must be unique):
  ```
  In CSS: #special{color: yellow}
  In HTML: <p id="special"> I say hello </p>
  ```
* Class Selector
  ```
  In CSS: .highlight {background: yellow;}
  IN HTML: <p class="highlight">I say hello </p>
  ```
* Star Selector: select everything on the page
  ```css
  * {
    border: 1px solid lightgrey;
  }
  ```
* Descendant Selector: select every `a` inside `li`
  ```css
  li a {
    color: red;
  }
  ```
* Adjacent Selector: select every `ul` after `h4`
  ```css
  h4 + ul {
    border: 4px solid red;
  }
  ```
* Attribute Selector: select element with some attributes
  ```css
  a[href="http://www.google.com"] {
    background: blue;
  }
  ```
* nth of type: select the n-th element
  ```css
  ul:nth-of-type(3) {
    background: purple;
  }
  ```

## Specificity and Cascade
* Inheritance: if we set a property of a parent, it may affect its children as well
* Specificity: whatever style that's closest to the element will be used
  * specificity calculator: https://specificity.keegan.st/
  * Type < Class < ID

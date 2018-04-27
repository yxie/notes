## Concepts:
* Closing and self closing tags
* Tags with attributes
* MDN

## HTML Tags:
```html
<tagName> Content </tagName>
```

## Important resource: MDN (Mozilla Developer Network)
* Tutorial
* Demo
* Reference

## First HTML Page:
* In atom, type `html` and then hit `tab`, will generate a template
* `<head>`: metadata, general info
* `<body>`: content
* Comment a sentence: `Ctrl + /`

## HTML element reference

## Some tags:
* Heading: `<h1>, <h2>, ..., <h6>`
* Paragraph: `<p>`
* Bold: `<b>, <strong>`
* Italic: `<i>, <em>`
* List:
  * Orderd list:
  ```
  <ol>
    <li> </li>
  </ol>
  ```
  * Unordered list:
  ```
  <ul>
    <li> </li>
  </ul>
  ```
  * Nested list
* Division element: <div> and <span>, useful for styling elements CSS
  * `<div>`: block-level generic container to group things together, can be styled later
  * `<span>`: in-line generic container

HTML attribute reference

Attributes:
```html
<tag name="value"></tag>
```
* Image: <img src="corgi.png">, a self closing tag
* Link: <a href="url">Link text</a>

Table:
* row <tr>
* cell <td>
* heading cell <th>
* `<thead>, <tbody>`
```html
<table border="1">
  <tr>
    <th>Color1</th>
    <th>Color2</th>
  </tr>
  <tr> <!-- row -->
    <td>Red</td> <!-- cell -->
    <td>Orange</td>
  </tr>
  <tr> <!-- row -->
    <td>Green</td>
    <td>Yellow</td>
  </tr>
</table>
```

Form:
* action: the URL to send form data to
* method: the type of HTTP request
* work with Back End JS
```html
<form class="" action="index.html" method="post">
  <!-- All out inputs will go in here -->
  <input type="text" name="" value="">
  <button type="button" name="button">login</button>
</form>
```
* label: `<label for="email">Email:</label>`
* validation of form inputs:
  * Presense validation: `required`
  * Datatype validation: `email` type requires special format
* radio/checkbox button
  ```html
  <input type="radio" name="" value="">
  <input type="checkbox" name="" value="">
  ```
  * For radio, use same `name` attribute to enforce single choice
* dropdown menu
  ```html
  <select name="color">
    <option value="r">Red</option>
    <option value="b">Blue</option>
    <option value="g">Green</option>
  </select>
  ```
* textarea
  ```html
  <textarea name="name" rows="8" cols="80"></textarea>
  ```

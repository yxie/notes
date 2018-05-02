# Bootstrap
* Concept
* Include bootstrap locally and by using CDN
* Use components likes button, nav
* Grid system
* Project: portfolio site
* Project: startup landing page

## CDN
```
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
```

JQUERY CDN (added before `bootstrap.min.js`)
```
<script
src="https://code.jquery.com/jquery-3.3.1.min.js"
integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
crossorigin="anonymous"></script>
```

## components
* button
* jumbotron
* container
* form
  * form-group
  * form-control
* nav navbar
  * navbar-header
  * nav navbar-nav navbar-right
  * collapse navbar-collapse
  * navbar-toggle collapsed
  * navbar-fixed-top

## Grid system
* 12 columns
* container -> row -> col-lg-, col-md-, col-sm-, col-xs-

## Images
* Free images: www.unplash.com
* thumbnail, for shaping images
* background-image:
  ```css
  body {
    background-image: url("https://images.unsplash.com/photo-1507150823660-eed1895c23c7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=016b833109416ed8f1d16c6baf887b25&auto=format&fit=crop&w=1050&q=80");
    background-size: cover; /*auto resize the background image*/
    background-position: center; /*auto center the background image*/
  }
  html {
    height: 100%; /*make background image always full screen*/
  }
  ```

## Icons
* https://getbootstrap.com/docs/3.3/components/
* Bootstrap icons: glyphicon
* More icons: Font-awesome
  * CDN:
  ```
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
  ```

## Mobile
Make website work for mobile. Add the following in `<head>` before `<title>`
```
<meta name="viewport" content="width=device-width, initial-scale=1">
```

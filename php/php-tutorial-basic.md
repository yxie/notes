# Syntax Overview

1. Escaping to PHP

   `<?php ... ?>`

2. Commenting PHP codes

   * single-line: 

     ```php
     <?php
        # This is a comment, and
        # This is the second line of the comment
        
        // This is a comment too. Each style comments only
        print "An example with single line comments";
     ?>
     ```

   * multi-line:

     ```php
     <?php
        /* This is a comment with multiline
           Author : Mohammad Mohtashim
           Purpose: Multiline Comments Demo
           Subject: PHP
        */
        
        print "An example with multi line comments";
     ?>
     ```




# Variable and Constant

1. **Variable**: 

   * all variables in PHP are denoted with a leading dollar sign `$`.
   * declare a variable to be global by placing the keyword `GLOBAL` in front of the variable name.
   * declare a variable to be static simply by placing the keyword `STATIC` in front of the variable name.

2. **Constant**: a name or an identifier for a simple value.

   ```php
   <?php
      define("MINSIZE", 50);
      
      echo MINSIZE;
      echo constant("MINSIZE"); // same thing as the previous line
   ?>
   ```

3. **Difference between constant and variable**:

   - There is no need to write a dollar sign `$` before a constant, where as in Variable one has to write a dollar sign.
   - Constants cannot be defined by simple assignment, they may only be defined using the define() function.
   - Constants may be defined and accessed anywhere without regard to variable scoping rules.
   - Once the Constants have been set, may not be redefined or undefined.

   Magic constants: `__LINE__`, `__FILE__`, ...




# Control Flow

Similar to c++

* if/elseif/else

* switch

* for loop

* while/do...while loop

* foreach loop

  ```php
  //php
  <?php
  	$array = array( 1, 2, 3, 4, 5);
  	foreach( $array as $value ) {
  		echo "Value is $value <br />";
  	}
  ?>

  //c++
  vector<int> arr = {1,2,3,4,5};
  for(string i : arr)
      cout << i << endl;

  //python
  arr = [1,2,3,4,5]
  for i in arr:
  	print(i)
  ```

* break/continue




# Array

An array is a data structure that stores one **or more** similar type of values in a single value. 

Used `array()` function to create array.

### Numerical Array

* These arrays can store `numbers, strings and any object` but their index will be represented by numbers. 
* By default array index starts from `zero`.

```php
$numbers = array( 1, 2, 3, 4, 5);
$numbers[0] = "one";
```

### Associative Array

* Associative array will have their index as `string`
* Don't keep associative array inside `double quote` while printing otherwise it would not return any value

```php
$salaries = array("mohammad" => 2000, "qadir" => 1000, "zara" => 500);
$salaries['mohammad'] = "high";
echo "Salary of mohammad is ". $salaries['mohammad'] . "<br />";
```

### Multidimensional Array

* Each element in the main array can also be an array

```php
$marks = array( 
	"mohammad" => array ("physics" => 35, "maths" => 30, "chemistry" => 39),
	"qadir" => array ("physics" => 30, "maths" => 32, "chemistry" => 29),
	"zara" => array ("physics" => 31, "maths" => 22, "chemistry" => 39)
);
echo $marks['mohammad']['physics'] . "<br />"; 
```



# String

1. Format

   - `Singly quoted strings` are treated almost literally

   - `doubly quoted strings` replace variables with their values as well as specially interpreting certain character sequences.

   - `Here document (heredoc)`: another way to assign multiple lines to a single string variable

     ```php
     <?php
        $channel =<<<_XML_
        
        <channel>
           <title>What's For Dinner</title>
           <link>http://menu.example.com/ </link>
           <description>Choose what to eat tonight.</description>
        </channel>
     _XML_;
        
        echo <<<END
        This uses the "here document" syntax to output multiple lines with variable 
        interpolation. Note that the here document terminator must appear on a line with 
        just a semicolon. no extra whitespace!
        

     END;
        
        print $channel;
     ?>
     ```

2. String operators

   * concatenation: `echo $string1 . " " . $string2;`
   * length: `echo strlen("Hello world!");`
   * search: `echo strpos("Hello world!","world");` 
     * return `FALSE` if not found
     * return `index` of first character if found




# Web Concept

This session demonstrates how PHP can provide dynamic content according to browser type, randomly generated numbers or User Input. It also demonstrated how the client browser can be redirected.

1. **Browser and platform**: `HTTP_USER_AGENT` which identifies the user's browser and operating system.

   `$_SERVER['HTTP_USER_AGENT']`

   will output `Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0`

2. **Random function**: `rand()` function is used to generate a random number.  `srand()` function that specifies the seed number as its argument.

   ```php
   srand( microtime() * 1000000 );
   $num = rand( 1, 4 );
   ```

3. **HTML Forms**: any form element in an HTML page will automatically be available to your PHP scripts.

   ```php
   <?php
      if( $_POST["name"] || $_POST["age"] ) {
         if (preg_match("/[^A-Za-z'-]/",$_POST['name'] )) {
            die ("invalid name and name should be alpha");
         }
         
         echo "Welcome ". $_POST['name']. "<br />";
         echo "You are ". $_POST['age']. " years old.";
         
         exit();
      }
   ?>
   <html>
      <body>
      
         <form action = "<?php $_PHP_SELF ?>" method = "POST">
            Name: <input type = "text" name = "name" />
            Age: <input type = "text" name = "age" />
            <input type = "submit" />
         </form>
         
      </body>
   </html>
   ```

   * The PHP default variable `$_PHP_SELF` is used for the PHP script name and when you click "submit" button then same PHP script will be called and will produce following result 
   * The `method = "POST"` is used to post user data to the server script. There are two methods of posting data to the server script which are discussed in [PHP GET & POST](https://www.tutorialspoint.com/php/php_get_post.htm) chapter.
   * After calling this function the `exit()` function can be used to halt parsing of  rest of the code.

4. **Browser redirection**: The PHP `header()` function supplies raw HTTP headers to the browser and can be used to redirect it to another location.Escaping to PHP

   ```php
   <?php
      if( $_POST["location"] ) {
         $location = $_POST["location"];
         header( "Location:$location" );
         
         exit();
      }
   ?>
   <html>
      <body>
      
         <p>Choose a site to visit :</p>
         
         <form action = "<?php $_SERVER['PHP_SELF'] ?>" method ="POST">
            <select name = "location">.
            
               <option value = "http://www.tutorialspoint.com">
                  Tutorialspoint.com
               </option>
            
               <option value = "http://www.google.com">
                  Google Search Page
               </option>
            
            </select>
            <input type = "submit" />
         </form>
         
      </body>
   </html>
   ```




# GET and POST

There are two ways the browser client can send information to the web server.

- The `GET` Method
- The `POST` Method

[Difference between `GET` and `POST`](https://www.w3schools.com/tags/ref_httpmethods.asp)

### URL encoding

Before the browser sends the information, it encodes it using a scheme called URL encoding.

`name1=value1&name2=value2&name3=value3`

* `name/value` pairs are joined with `equal signs` and different pairs are separated by the `ampersand`.
* `Spaces` are removed and replaced with the `+` character.
* `non-alphanumeric characters` are replaced with a `hexadecimal` values.

### GET method

The `GET` method sends the encoded user information appended to the page request. The page and the encoded information are separated by the `?` character.

```
http://www.test.com/index.htm?name1=value1&name2=value2
```

### POST method

The `POST` method transfers information via `HTTP headers`. The information is encoded as described in case of GET method and put into a header called `QUERY_STRING`.

### Request method

The PHP `$_REQUEST` variable contains the contents of both `$_GET`, `$_POST`, and `$_COOKIE`. We will discuss `$_COOKIE` variable when we will explain about cookies.



# File Inclusion

You can include the content of a PHP file into another PHP file before the server executes it. There are two PHP functions which can be used to included one PHP file into another PHP file.

- The `include()` Function: takes all the text in a specified file and copies it into the file that uses the include function. If there is any problem in loading a file then the `include()` function generates a **warning** but the script will continue execution.

  `<?php include("menu.php"); ?>`

- The `require()` Function: takes all the text in a specified file and copies it into the file that uses the include function. If there is any problem in loading a file then the `require()` function generates a **fatal error** and halt the execution of the script.

  `<?php require("xxmenu.php"); ?>`




# File I/O

`fopen()`, `filesize()`, `fread()`, `fwrite()`, `fclose()`

### Reading a file

```php
<?php
	$filename = "tmp.txt";
	$file = fopen( $filename, "r" );
         
	if( $file == false ) {
		echo ( "Error in opening file" );
		exit();
	}

	$filesize = filesize( $filename );
	$filetext = fread( $file, $filesize );
	fclose( $file );
         
	echo ( "File size : $filesize bytes" );
	echo ( "<pre>$filetext</pre>" );
?>
```

### Writing a file

```php
<?php
   $filename = "/home/user/guest/newfile.txt";
   $file = fopen( $filename, "w" );
   
   if( $file == false ) {
      echo ( "Error in opening new file" );
      exit();
   }
   fwrite( $file, "This is  a simple test\n" );
   fclose( $file );
?>
```



# Functions

### `function` keyword

```php
//c++
void writeMessage() {
  cout << "..." << endl;
}

//python
def writeMessage() {
  print("...");
}

//php
<?php
	/* Defining a PHP Function */
	function writeMessage() {
		echo "You are really a nice person, Have a nice time!";
	}
	/* Calling a PHP Function */
	writeMessage();
?>
```

### Examples:

```php
<?php
  	//pass by value
	function addFive($num) {
		$num += 5;
	}    
    //You can pass an argument by reference by adding an ampersand & 
	//to the variable name in either the function call or the function definition.
	function addSix(&$num) {
		$num += 6;
	}    
	$orignum = 10;
	addFive( $orignum ); //$orignum = 10;
    addSix( $orignum ); //$orignum = 16;

	//return values
	function addFunction($num1, $num2) {
		$sum = $num1 + $num2;
		return $sum;
	}
	$return_value = addFunction(10, 20);

	//default parameter values
    function printMe($param = NULL) {
		print $param;
	}

	//dynamic function calls
	function sayHello() {
    	echo "Hello<br />";
    }
    $function_holder = "sayHello";
    $function_holder();
?>
```


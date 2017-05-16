# Cookies

**Cookies** are text files stored on the client computer and they are kept of use tracking purpose. 

* A cookie is often used to identify a user. 
* A cookie is a small file that the server embeds on the user's computer. 
* Each time the same computer requests a page with a browser, it will send the cookie too.

### Set-cookie header

The Set-Cookie header contains **name value pair**, **GMT date**, **path** and **domain**. 

* The name and value will be URL encoded. 
* The expires field is an instruction to the browser to "forget" the cookie after the given time 
  and date.

```
HTTP/1.1 200 OK
Date: Fri, 04 Feb 2000 21:03:38 GMT
Server: Apache/1.3.9 (UNIX) PHP/4.0b3
Set-Cookie: name=xyz; expires=Friday, 04-Feb-07 22:03:38 GMT; 
                 path=/; domain=tutorialspoint.com
Connection: close
Content-Type: text/html
```

### Setting cookies with PHP

```php
setcookie(name, value, expire, path, domain, security);
```

- **Name** − This sets the name of the cookie and is stored in an environment variable called `HTTP_COOKIE_VARS`. This variable is used while accessing cookies.
- **Value** − This sets the value of the named variable and is the content that you actually want to store.
- **Expiry** − This specify a future time in seconds since 00:00:00 GMT on 1st Jan 1970. After this time cookie will become inaccessible. If this parameter is not set then cookie will automatically expire when the Web Browser is closed.
- **Path** − This specifies the directories for which the cookie is valid. A single `forward slash` character permits the cookie to be valid for all directories.
- **Domain** − This can be used to specify the domain name in very large domains and must contain at least two periods to be valid. All cookies are only valid for the host and domain which created them.
- **Security** − This can be set to 1 to specify that the cookie should only be sent by secure transmission using HTTPS otherwise set to 0 which mean cookie can be sent by regular HTTP.

```php
//examples
setcookie("name", "John Watkin", time()+3600, "/","", 0);
setcookie("age", "36", time()+3600, "/", "",  0);
```

### Accessing cookies with PHP

Simplest way is to use either `$_COOKIE` or `$HTTP_COOKIE_VARS` variables.

```php
<?php
	echo $_COOKIE["name"]. "<br />";
	/* is equivalent to */
	echo $HTTP_COOKIE_VARS["name"]. "<br />";

	echo $_COOKIE["age"] . "<br />";
	/* is equivalent to */
	echo $HTTP_COOKIE_VARS["age"] . "<br />";
?>
```

You can use `isset()` function to check if a cookie is set or not.

```php
<?php
	if( isset($_COOKIE["name"]))
		echo "Welcome " . $_COOKIE["name"] . "<br />";
	else
		echo "Sorry... Not recognized" . "<br />";
?>
```

### Deleting cookies with PHP

It is safest to set the cookie with **a date that has already expired**

```php
<?php
   setcookie( "name", "", time()- 60, "/","", 0);
   setcookie( "age", "", time()- 60, "/","", 0);
?>
```



# Sessions

Make data accessible across the various pages of an entire website is to use a PHP **Session**.

* A session creates a file in a temporary directory on the server where registered session variables and their values are stored. This data will be available to all pages on the site during that visit.
* The location of the temporary file is determined by a setting in the **php.ini** file called **session.save_path**. 
* A cookie called `PHPSESSID` is automatically sent to the user's computer to store unique session identification string.

### Starting a PHP session

```php
<?php
   session_start();
   
   if( isset( $_SESSION['counter'] ) ) {
      $_SESSION['counter'] += 1;
   }else {
      $_SESSION['counter'] = 1;
   }
	
   $msg = "You have visited this page ".  $_SESSION['counter'];
   $msg .= "in this session.";
?>
```

* A PHP session is easily started by making a call to the `session_start()` function.This function first checks if a session is already started and if none is started then it starts one. It is recommended to put the call to `session_start()` at the beginning of the page.
* You don't need to call `start_session()` function to start a session when a user visits your site if you can set `session.auto_start` variable to `1` in **php.ini** file.
* Session variables are stored in associative array called `$_SESSION[]`. These variables can be accessed during lifetime of a session.

### Destroying a PHP session

Unset a single variable

```php
unset($_SESSION['counter']);
```

Destroy all the session

```php
session_destroy();
```

### Sessions without cookies

There may be a case when a user does not allow to store cookies on their machine. 

* You can use the constant `SID` which is defined if the session started. 
* The `htmlspecialchars()` may be used when printing the `SID` in order to prevent XSS related attacks.

```php
<p>
   To continue  click following link <br />
   
   <a  href = "nextpage.php?<?php echo htmlspecialchars(SID); ?>">
</p>
```


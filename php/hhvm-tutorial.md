#Test HHVM

After installing HHVM, change to the directory where your code lives, and start up HHVM:

`hhvm -m server -p 8080`

`-m` represents the mode and here indicates that HHVM is running in HTTP server mode.

`-p` configures the TCP port that HHVM uses to listen to HTTP requests. The default port is 80, the standard HTTP port. However, that port requires root access, so for this example, we will use port 8080.

Once you have HHVM running, write a simple "Hello World" program named hello.php:

`<?php
echo "Hello World!";`

Save this `hello.php` in the same directory that you ran the `hhvm` command from above. Then, load http://localhost:8080/hello.php in your browser and verify you see "Hello World!" appear.

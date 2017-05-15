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

3. Variable: 

   * all variables in PHP are denoted with a leading dollar sign `$`.
   * declare a variable to be global by placing the keyword `GLOBAL` in front of the variable name.
   * declare a variable to be static simply by placing the keyword `STATIC` in front of the variable name.

4. String: 

   * `Singly quoted strings` are treated almost literally, whereas `doubly quoted strings` replace variables with their values as well as specially interpreting certain character sequences.

   * `Here document (heredoc)`: another way to assign multiple lines to a single string variable

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

5. Constant: a name or an identifier for a simple value.

   ```php
   <?php
      define("MINSIZE", 50);
      
      echo MINSIZE;
      echo constant("MINSIZE"); // same thing as the previous line
   ?>
   ```

   Difference between *constant* and *variable*:

   - There is no need to write a dollar sign `$` before a constant, where as in Variable one has to write a dollar sign.
   - Constants cannot be defined by simple assignment, they may only be defined using the define() function.
   - Constants may be defined and accessed anywhere without regard to variable scoping rules.
   - Once the Constants have been set, may not be redefined or undefined.

   Magic constants: `__LINE__`, `__FILE__`, ...

6. ​


Regular expression: https://www.py4e.com/html3/11-regex

Web programming: https://www.py4e.com/html3/12-network

XML and JSON: https://www.py4e.com/html3/13-web

# Regular Expression

**Library**: re

**Functions**: 

re.search(pattern, source_str): return true/false

findall(pattern, source_str)： return a list of matched strings

```python
# Search for lines that start with From and have an at sign
import re
hand = open('mbox-short.txt')
for line in hand:
    line = line.rstrip()
    if re.search('^From:.+@', line):
        print(line)

# Code: http://www.py4e.com/code3/re04.py
```

```python
import re
s = 'A message from csev@umich.edu to cwen@iupui.edu about meeting @2PM'
lst = re.findall('\S+@\S+', s)
print(lst)

# Code: http://www.py4e.com/code3/re05.py
```

**Non-greedy matching: question mark ?**

Greedy: '^F.+:'

Non-greedy: '^F.+?:' 



# Web programming

## HTTP

**Make a HTTP request**

```
GET http://data.pr4e.org/romeo.txt HTTP/1.0\r\n\r\n
```

## Sockets

**Package**: socket

**Methods**: 

* socket.socket()
* connect()
* encode(), decode()
* send(), recv()

```python
import socket

mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect(('data.pr4e.org', 80))
cmd = 'GET http://data.pr4e.org/romeo.txt HTTP/1.0\r\n\r\n'.encode()
mysock.send(cmd)

while True:
    data = mysock.recv(512)
    if (len(data) < 1):
        break
    print(data.decode())
mysock.close()

# Code: http://www.py4e.com/code3/socket1.py
```

The program produces the following output: HTTP header + HTTP body

```
HTTP/1.1 200 OK
Date: Sun, 14 Mar 2010 23:52:41 GMT
Server: Apache
Last-Modified: Tue, 29 Dec 2009 01:31:22 GMT
ETag: "143c1b33-a7-4b395bea"
Accept-Ranges: bytes
Content-Length: 167
Connection: close
Content-Type: text/plain

But soft what light through yonder window breaks
It is the east and Juliet is the sun
Arise fair sun and kill the envious moon
Who is already sick and pale with grief
```

## Unicode

In python3, all strings are unicode

```
Python 3.5.1
>>> x = b'abc'
>>> type(x)
<class 'bytes'>
>>> x = '이광춘'
>>> type(x)
<class 'str'>
>>> x = u'이광춘'
>>> type(x)
<class 'str'>
```

When we talk to a network resource using sockets or talk to a database we have to encode and decode data (usually to UTF-8)

```
mysocket.encode(send_data)
recv_data.decode()
```

## urllib

**Package**: urllib

**Methods**

* urllib.request.urlopen('xxx')

Using `urllib`, you can treat a web page much like a file. You simply indicate which web page you would like to retrieve and `urllib` handles all of the HTTP protocol and header details.

```python
import urllib.request

fhand = urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
for line in fhand:
    print(line.decode().strip())

# Code: http://www.py4e.com/code3/urllib1.py
```

The urllib code consumes the header and only return the data

```
But soft what light through yonder window breaks
It is the east and Juliet is the sun
Arise fair sun and kill the envious moon
Who is already sick and pale with grief
```

Read binary files

```python
import urllib.request, urllib.parse, urllib.error

img = urllib.request.urlopen('http://data.pr4e.org/cover3.jpg').read()
fhand = open('cover3.jpg', 'wb')
fhand.write(img)
fhand.close()

# Code: http://www.py4e.com/code3/curl1.py
```

Read large binary files, break them into chunks

```python
import urllib.request, urllib.parse, urllib.error

img = urllib.request.urlopen('http://data.pr4e.org/cover3.jpg')
fhand = open('cover3.jpg', 'wb')
size = 0
while True:
    info = img.read(100000)
    if len(info) < 1: break
    size = size + len(info)
    fhand.write(info)

print(size, 'characters copied.')
fhand.close()

# Code: http://www.py4e.com/code3/curl2.py
```



## HTMP Parsing: BeautifulSoup

**Package:** BeautifulSoup

**Methods:** 

* soup = BeautifulSoup(html, 'html.parser')
* tags = soup('a')

We will use `urllib` to read the page and then use `BeautifulSoup` to extract the `href` attributes from the anchor (`a`) tags.

```Python
# To run this, you can install BeautifulSoup
# https://pypi.python.org/pypi/beautifulsoup4

# Or download the file
# http://www.py4e.com/code3/bs4.zip
# and unzip it in the same directory as this file

import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter - ')
html = urllib.request.urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags
tags = soup('a')
for tag in tags:
    print(tag.get('href', None))

# Code: http://www.py4e.com/code3/urllinks.py
```



# XML and JSON

## XML (eXtensible Markup Language)

**Package:** xml.etree.ElementTree (ET)

**Methods:** 

* tree = ET.fromstring(data)
* print('Name:', tree.find('name').text)
* print('Attr:', tree.find('email').get('hide'))

**XML Example**

```xml
<person>
  <name>Chuck</name>
  <phone type="intl">
     +1 734 303 4456
   </phone>
   <email hide="yes"/>
</person>
```

**Tree Structure**

Often it is helpful to think of an XML document as a tree structure where there is a top tag `person` and other tags such as `phone` are drawn as *children* of their parent nodes.

![A Tree Representation of XML](https://www.py4e.com/images/xml-tree.svg)

**Parsing XML**

```python
import xml.etree.ElementTree as ET

data = '''
<person>
  <name>Chuck</name>
  <phone type="intl">
     +1 734 303 4456
   </phone>
   <email hide="yes"/>
</person>'''

tree = ET.fromstring(data)
print('Name:', tree.find('name').text)
print('Attr:', tree.find('email').get('hide'))

# Code: http://www.py4e.com/code3/xml1.py
```



# Python package summary

## Regular expression

**Package**: re

**Methods**: 

* re.search(pattern, source_str): return true/false
* findall(pattern, source_str)： return a list of matched strings

## Socket##

**Package**: socket

**Methods**: 

- socket.socket()
- connect()
- encode(), decode()
- send(), recv()

## urllib

**Package**: urllib

**Methods**

- urllib.request.urlopen('xxx')

## BeautifulSoup##

**Package:** BeautifulSoup

**Methods:** 

- soup = BeautifulSoup(html, 'html.parser')
- tags = soup('a')

## XML

**Package:** xml.etree.ElementTree (ET)

**Methods:** 

- tree = ET.fromstring(data)
- print('Name:', tree.find('name').text)
- print('Attr:', tree.find('email').get('hide'))
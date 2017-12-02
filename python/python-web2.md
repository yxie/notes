# JSON (JavaScript Object Notation)

**library**: json

**methods:** 

* json.loads(data), returns a python dictionary

```json
{
  "name" : "Chuck",
  "phone" : {
    "type" : "intl",
    "number" : "+1 734 303 4456"
   },
   "email" : {
     "hide" : "yes"
   }
}
```

**Comparison between JSON and XML**

* In general, JSON structures are simpler than XML because JSON has fewer capabilities than XML. 
* But JSON has the advantage that it maps *directly* to some combination of dictionaries and lists. And since nearly all programming languages have something equivalent to Python's dictionaries and lists, JSON is a very natural format to have two cooperating programs exchange data.

**Parsing JSON**

```python
import json

data = '''
[
  { "id" : "001",
    "x" : "2",
    "name" : "Chuck"
  } ,
  { "id" : "009",
    "x" : "7",
    "name" : "Chuck"
  }
]'''

info = json.loads(data)
print('User count:', len(info))

for item in info:
    print('Name', item['name'])
    print('Id', item['id'])
    print('Attribute', item['x'])

# Code: http://www.py4e.com/code3/json2.py
```

# Service Oriented Approach

API: application program interface

ways to use web protocols to access data on systems, using well-defined and structured approaches.
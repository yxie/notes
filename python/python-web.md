# Regular Expression

Library: re

Functions: re.search(pattern, source_str), findall(pattern, source_str)

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

Non-greedy matching: question mark ?

Greedy: '^F.+:'

Non-greedy: '^F.+?:' 
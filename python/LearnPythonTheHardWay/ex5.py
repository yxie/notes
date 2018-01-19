# string formatting operations
# https://docs.python.org/2.4/lib/typesseq-strings.html
name = 'yang'
last_name = 'xie'
age = 27
height = 170
weight = 65

print("Let's talk about %s" % name)
print("If I add %d, %d, and %d I get %d" % (
    age, height, weight, age+height+weight))

print("Let's talk about %r" % name)
print("If I add %r, %r, and %r I get %r" % (
    age, height, weight, age+height+weight))

print("Learn %(language)s the hard way" % {'language' : 'Python'})
print("%s" % name + last_name)
print(name + last_name)
print("." * 10)


# formatter
formatter = "%r %r %r %r"
print(formatter % (1, 2, 3, 4))
print(formatter % ('one', 'two', 'three', 'four'))

# more printing
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\n"
print("Days:", days)
print("Months:", months)

print("""
Long sentence. Long sentence.
Long sentence. Long sentence.
""")

# escape sequence
# \n
# \' \"

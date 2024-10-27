#!/usr/bin/env python3

# compile() method compiles a pattern object
# match() method determine whether the RE matches at the beginning of the string
# search() method scans a string searching for any location where the RE matches
# findall() method finds all substrings where the RE matches returning them as a list
# finditer() method finds all substrings where the RE matches returning them as an iterator

import re

# create a pattern object
p = re.compile(r'[a-z]+')

# let's see how it works
print("the pattern is 'string'")
print("the pattern object: {}".format(p))
print("no match returns 'None': {}".format(p.match('')))
print("a match returns a match object: {}".format(p.match('string')))
input("\npress Enter to continue...")

# create a match object 'm'
print("\n::: create a variable 'm' to hold the match object:")
m = p.match('string')
print("the match object 'm' is: {}".format(m))
input("\npress Enter to continue...")

# use group() to return the string matched by the regular expression
# use start() to return the starting position of the match
# use end() to return the ending position of the match
# use span() to return a tuple that contains the (start, end) positions of the match
print("\n::: use group(), start(), end(), and span() with the match object:")
print("m.group() returns: {}".format(m.group()))
print("m.start() returns: {}".format(m.start()))
print("m.end() returns: {}".format(m.end()))
print("m.span() returns: {}".format(m.span()))
input("\npress Enter to continue...")

# the common style is to store the match object in a variable then check to see if it was None
print("\n::: store the match object in a var then see if it was 'None' using 'if m:' :")
if m:
    print('Match found: ', m.group())
else:
    print('No match')
input("\npress Enter to continue...")

# now we'll use a different string to match
p = re.compile(r'\d+')
s = 'Product was sold Jan 18, shipped on Jan 19, and delivered on Jan 26'
print("\n::: now use this string: '{}'".format(s))
print("the pattern object: {}".format(p))

# match() determines whether the RE matches at the beginning of the string
m = p.match(s)
print("\n::: match() determines whether the RE matches at the beginning of the string")
print("match() returns: {}".format(m)) 
input("\npress Enter to continue...")

# search() scans a string searching for any location where the RE matches
m = p.search(s)
print("\n::: search() scans a string searching for ANY location where the RE matches")
print("search() returns: {}".format(m)) 
input("\npress Enter to continue...")

# There are two pattern methods that return all of the matches for a pattern
# findall() returns a list of matching strings
m = p.findall(s)
print("\n::: findall() finds ALL substrings where the RE matches, returning them as a list")
print("\nfindall() returns a list of matching strings: {}".format(m)) 
input("\npress Enter to continue...")

# finditer returns a sequence of match object instances as an iterator
iter = p.finditer(s)
print("\n::: finditer() finds all substrings where the RE matches, returning them as an iterator")
print("print each item's group() and span() values:")
for item in iter:
    print("group: {} and span: {}".format(item.group(), item.span())) 
input("\npress Enter to end...")

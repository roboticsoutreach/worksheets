An introduction to m3pi C++ programming
===

The *m3pi* bots are programmed in C++, a language that works in a similar way to other languages you may be familiar with such as Python or Java.

C++ is used mainly for low-level programming where the programmer wants very specific control of the state of their device, for example when programming small microcontrollers for watches, motor controllers, or even robots. Because of the differences between these devices and the more powerful computers we're used to, some things in C++ work a little bit differently than what you may be used to:

## Semicolons

Statements in C++ end in semicolons, so if I'm just trying to call a function called `doRobotStuff`, I might write this one line in Python:

```python
doRobotStuff()
```

In C++, we do the same thing, but we need to make sure there's a semicolon on the end:

```c++
doRobotStuff();
```

## Squiggly Brackets

In python, we use colons and indentation to control the flow of our code. For example, we can write:

```python
if condition:
    doAFunction()
    doAnotherFunction()
```

In C++, instead of colons and indents, we use brackets, so the equivalent statement becomes:

```c++
if (condition) {
    doAFunction();
    doAnotherFunction();
}
```

## Comments

Comments are not executed by the code, they are just for you to understand what is going on.

In python you can make a comment with

```python
# this is a comment which doesn't get executed
```

In c++ it's very similar, but you must start with `//` instead of `#`.

```c++
// this is a single line comment
```

You can also create multiple lines of comments with `/*` and `*/`
```c++
 /* this is a
  multi-line comment */
```

## Data Types
In Python we can really easily define variables - we can say `counter = 7` and the variable `counter` is set to the integer value of 7. Python is smart, and knows that when we set a variable to 7, we want it to be an integer, since 7 is an integer. If I had said `counter = 'seven'` then the `counter` variable would instead be a string.

C++ does things a little differently - it needs to be told what the type of variable you're declaring. Saying `counter = 7` doesn't work in C++, because it doesn't know what `counter` is supposed to be - it's a variable, but *what kind of variable?* So, in C++ we need to write `int counter = 7;` to let the compiler know we want an `int`, representing the integer data type.

C++ data types you may find useful are:

- `bool`: either `true` or `false`.
- `int`: a whole number (can be positive or negative).
- `float`: a decimal value (does not need to be a whole number).
- `char`: a single character of text.
- `string`: a piece of text consisting of zero or more characters.

For the *m3pi* bots you'll mostly be using the `float` data type, as most of the values for the bot will be decimal values, and the `float` datatype is the best for representing those.

## Importing

In Python we can use other libraries in our code by using the `import` keyword. We can do a similar thing in C++ using `#include`. You probably won't need to do much importing, but in order to make use of the robot, your program needs to start with this:

```c++
#include "mbed.h"
#include "m3pi.h"
```
## Defining functions

In python we define functions using the `def` keyword. Here is a function called `addNumbers` that takes two values, `a` and `b`, and returns their sum:

```
def addNumbers(a, b):
    result = a + b
    return result
```

Here's the equivalent function in C++

```
int addNumbers(int a, int b){
    int result = a + b;
    return result;
}
```

The main differences are in the syntax (lots of squiggly brackets and semicolons), and in the data types; in C++ the function must have a data type, which is what it will return. Every function must have a data type, but sometimes we want functions that don't return anything, and for those we can use the `void` data type which lets the compiler know we're not returning anything. We also need to specify the data types of the function's parameters, since we're effectively declaring variables with them.

## The main function

In python, we just make a `.py` file and run it, which causes the code in the file to be run line by line. In C++, the code we want to start with needs to go in a `main` method. So if we write this in python:

```python
doSomething()
```

We can run it immediately. In order to have something we can run immediately in C++, we would have to write:

```c++
int main(){
    doSomething();
}
```

Note: the main function returns an int, generally zero if everything works correctly.

## Loops

Both Python and C++ come with loops. The specific loops you're likely to find useful are **for loops** and **while loops**.

### For loops
In Python, we generally use for loops when iterating through a list or a range of numbers. An example loop in python, which loops from the numbers 4, 5, 6, 7, and 8 would be:

```python
for counter in range(4, 9):
    doSomething(counter)
```

Doing the same in C++ is a tad more complex:


```c++
for (int counter = 4; counter < 9; counter ++){
    doSomething(counter);
}
```

We see all the usual brackets and semicolons, the bit that's particularly interesting is `int counter = 4; counter < 9; counter ++`. What's happening here is that we have 3 separate statements on a single line, the *initialisation* statement, a *condition* statement, and an *increment* statement.

The first statement of the loop (the initialisation statement) happens once, at the start of the loop. In our case, we declare the counter variable.

The second statement must be true for the loop to continue, in our case this is checking that the counter is less than 9.

The third statement happens at the end of every loop run, in our case we just increment the counter by one (this is generally what you want to do with a for loop).

The simple way to remember this is `for(int variable=START; variable<END; variable++)` (Note: this is in the python style where the loop stops at 1 less than END, if you want it to go all the way, replace the `<` condition with a `<=`).

### While loops
While loops are a lot simpler than for loops - the only difference is syntax. Where in Python we would write:

```python
while condition:
    doSomething()
```

In C++ we would write:

```c++
while (condition){
    doSomething();
}
```

## Other things to consider
- The common libraries you may be used to in Python like the `math` library for doing maths do exist to some extent in C++, but they will not be identical - you most likely won't need to use them though.
- Don't be surprised if the compiler complains the first time round you try to compile code. Look through the error message to see what's gone wrong, and if you get stuck don't be afraid to ask for help.
- Feel free to experiment - the best way to find out if a language behaves a certain way is just to try it.

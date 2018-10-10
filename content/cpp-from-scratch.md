An introduction to m3pi programming
===

The *m3pi* bots are autonomous robots, which means that instead of being remote controlled, they are controlled by programs which run on the robot.

The program you will run on your robot is essentially a series of instructions which use the inputs from the robot to set its outputs. In our case, the inputs are the sensors which tell the robot where the line is, and the outputs are the power sent to the motors (and the screen).

Various programming languages exist, as different languages are used for different things. The *m3pi* bots are programmed in C++, which is a language regularly used in industry for programming the small processors found in everyday devices like fridges, microwaves, cars and more. C++ is a very fast and efficient language, so it's great for applications where the processors available are relatively low power.

## Getting started with C++

Programs in C++ are composed of statements and functions. A statement is a single instruction, while a function is a set of statements grouped together so that we can run them all at once. A good analogy for this would be the set of instructions for watering a plant. We might write instructions saying "pick up watering can", "go to tap", "turn on tap" and so on. Together these instructions form the function "water plant".

### Syntax

C++ programs need to be written with very specific punctuation and format, because the computer reading them needs to know **exactly** what we mean.

Specifically, every statement has to end in a semicolon, and everything is case sensitive.

### Variables

Information can be stored in variables, so that we can keep track of what's happening. In our plant watering analogy, we can think of this as making a note of something. For example "record when the plant was last watered". We can do the same in C++, though we have to state the *type* of variable we're storing (a number, or a decimal, or a string of letters) so the computer can assign the right amount of space.

The most useful variable types for this activity will be `int` which stores a whole number like 3 or -13, and `float` which stores a decimal like -7.234 or 5.0.

Here's how we can assign a value to a variable:

```c++
float someNumber = 4.31;
```

Here we're starting off by stating we're using a `float` variable type, then we name our variable `someNumber`, then we assign the value 4.31 to it.

### Calling functions

We can also call functions in our code. This is useful because the way we control our robot is by means of calling functions. Here's an example of a function call:

```c++
m3pi.left_motor(0.5)
```

In this example we're using the left\_motor function of the `m3pi` object. The dot just means we're using a property of something - the left motor belongs to the m3pi.

### Functions returning values

Calling functions can sometimes return values, for example when getting sensor information. Here's an example:

```c++
float position = m3pi.line_position()
```

Here we're storing the line position (returned from the line\_position function) in a variable.

### Control flow

We can also loop (do stuff repeatedly) and use conditional statements (do stuff only if a set condition is true).

For example:

```c++
int someNumber = 0;

while(someNumber > 4){
  someNumber = someNumber + 1;
}
```

This will set someNumber to 0, then while that number is bigger than 4, repeatedly add 1 to it.

Here's an if statement:

```c++
float randomValue = 4.3

if(randomValue > 4){
  doStuff();
}
```

### An example program

Here's an example program to get started:

```c++
#include "mbed.h"
#include "m3pi.h"
m3pi m3pi;

int main() {
  m3pi.forward(0.3);
}
```

The bit you want to edit is all inside the squiggly brackets of `main()`. Don't worry too much about what's going on outside the squiggly brackets, though feel free to ask us if you're interested.

### Useful bits of code

Use the `m3pi.sensor_auto_calibrate()` function at the start of your code to have the robot calibrate itself on the line (it uses this function to tell apart the line from the rest of the table)

The `m3pi.line_position()` function will tell you where the line is relative to your robot. You probably want to use this if you're going to follow the line.

The next thing you may want to do is have an if statement deciding what to do depending on the line location

```
if(line > 0.5){
  //do something
} else if(line < 0.5){
  //do something else
} else {
  //do another thing
}
```

That's an example if statement you may want to use, assuming the line position is stored in the float variable `line`.

Lastly, you probably want to keep running your code, so you may want to put it in a loop.

```
while(true){
  //everything
}
```

Give it a go, and don't worry if things don't work perfectly! Ask us if you have any questions.

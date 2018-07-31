# How-To Guides

## Putting code on the robot

To put code on the robot, simply click 'compile' in the compiler. After a few seconds it should ask where to save the compiled file. Simply plug the mbed into your laptop and it should show up as a USB stick, choose to save into the USB stick.

## Running the robot

Unplug the robot, all the lights should turn off. To run the program just turn on the robot! press the button on the top next to the screen, and it should start running the code. (You can also press the small circular button on the mbed to restart the program)


## How To Guide: Moving

The following line can be used to set the robot moving forward.

    m3pi.forward(speed);

Replace `speed` with a number between 0.0 and 1.0. Motors will not change until you tell them to! To stop, you should use `m3pi.forward(0)`.

### Setting individual motor speeds

    m3pi.left_motor(speed);

and

    m3pi.right_motor(speed);

can be used to set the speeds of the two motors separately. You can make the robot rotate by setting the motors to different speeds

### Rotate left or right on the spot

Use one of these two lines to rotate on the spot either left or right:

    m3pi.left(speed);
    m3pi.right(speed);

Replace `speed` with a number between 0.0 and 1.0.

## How to Guide: using the line sensors

At the start of your program, add:

    m3pi.sensor_auto_calibrate();

This will make the robot wiggle to calibrate its light sensor (it must be on a line!). The calibration needs to be done once every time your robot is turned on.

You can get the position of the line with the following function:

    float position_of_line = m3pi.line_position();

`position_of_line` will now contain a decimal (float) value in the range -1.0 to 1.0 inclusive. It could be any value between -1 and 1! -1.0 means the line is on the left or cannot be found, 1.0 means the line is on the right.


## How to Guide: Using loops

There are two types of loops, while loops and for loops. Both are types are shown below,
and both print the numbers 0 to 9.

    int i = 0;
    while (i < 10) {
        m3pi.printf("%d", i); // print i
        i++; // increment i by 1
    }


    for (int j = 0; j < 10; j++) {
        m3pi.printf("%d", j); // print j
    }

You can also loop forever with `while (true)`

## How to Guide: use the LCD screen

The LCD screen is a 2x8 character display. To display text, you must first move the cursor to a point on the screen, and then use `printf` to add to the display.

    m3pi.locate(0, 1); // move the cursor to the start of the second line (the arguments are (x, y))
    m3pi.printf("bees"); // print "bees" on the display

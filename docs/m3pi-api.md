# m3pi API Reference

There are a lot of functions available in the m3pi library, below is a reference list for the most useful functions available in the [m3pi library](https://os.mbed.com/users/chris/code/m3pi/docs/4b7d6ea9b35b/classm3pi.html):

| Function                                 | Description                                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------------------|
| `reset()                   `             | Force a hardware reset.                                                                     |
| `left_motor(float speed)   `             | Directly control the speed and direction of the left motor.                                 |
| `right_motor(float speed)  `             | Directly control the speed and direction of the right motor.                                |
| `forward(float speed)      `             | Drive both motors forwards as the same speed.                                               |
| `backward(float speed)     `             | Drive both motors backwards as the same speed.                                              |
| `left(float speed)         `             | Drive left motor backwards and right motor forwards at the same speed to turn on the spot.  |
| `right(float speed)        `             | Drive left motor forwards and right motor backwards at the same speed to turn on the spot.  |
| `stop()                    `             | Stop both motors.                                                                           |
| `line_position()           `             | Read the position of the detected line. Returns the position as a float between -1.0 and 1.0. -1.0 means line is on the left, or the line has been lost 0.0 means the line is in the middle 1.0 means the line is on the right.   |
| `sensor_auto_calibrate()   `             | Calibrate the sensors.                                                                      |
| `locate(int x, int y)      `             | Move the cursor on the screen to (x,y)                                                      |
| `printf()                  `             | Write text to the screen                                                                    |

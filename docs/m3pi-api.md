# m3pi API

We now have an instance of the `m3pi` class, in the example code above it is called `bot`. We can use this to control the robot hardware using the functions listed at the [m3pi library docs](https://os.mbed.com/users/chris/code/m3pi/docs/4b7d6ea9b35b/classm3pi.html) and a brief overview below:

| Function                     | Description                                                                                 |
|------------------------------|---------------------------------------------------------------------------------------------|
| reset()                      | Force a hardware reset.                                                                     |
| left_motor(float speed)      | Directly control the speed and direction of the left motor.                                 |
| right_motor(float speed)     | Directly control the speed and direction of the right motor.                                |
| forward(float speed)         | Drive both motors forwards as the same speed.                                               |
| backward(float speed)        | Drive both motors backwards as the same speed.                                              |
| left (float speed)           | Drive left motor backwards and right motor forwards at the same speed to turn on the spot.  |
| right (float speed)          | Drive left motor forwards and right motor backwards at the same speed to turn on the spot.  |
| stop ()                      | Stop both motors.                                                                           |
| line_position ()             | Read the position of the detected line. Returns a float.                                    |
| sensor_auto_calibrate ()     | Calibrate the sensors.                                                                      |

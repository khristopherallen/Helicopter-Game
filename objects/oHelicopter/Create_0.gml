/// @description  

w_spd = 2;
n_spd = 3;
r_spd = 5;
spd = n_spd;

moveRight = false;
moveLeft = false;
moveX = 0;
movement = 8;
angle = 0;
rspeed = 5;
pointdir = 0;
accel = 0;

instance_create_layer(x, y, "Helicopter", oHelicopterCollision);

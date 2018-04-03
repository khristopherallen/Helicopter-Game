/// @description  
	
//////// MOVEMENT CODE ////////

// UPDATE INPUT
input_left		= keyboard_check(ord("A"));
input_right		= keyboard_check(ord("D"));
input_up		= keyboard_check(ord("W"));
input_down		= keyboard_check(ord("S"));
input_walk		= keyboard_check(vk_shift);
input_run		= keyboard_check(vk_control);


// ALTER SPEED
if (input_walk or input_run) {
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else {
	spd = n_spd;
	if (input_up || input_down) {
		speed = clamp(speed+accelSpd*(input_up-input_down), -5, 5);
	} else {		
		speed += -sign(speed)*accelSpd;
		accel += -sign(speed)*accelSpd;
		accel = clamp(accel,-2,2);
		if (abs(speed)<.2){
			speed = 0;	
			accel = 0;
		}
	}
}

direction += (input_left-input_right)*n_spd;


// INTENDED MOVEMENT
moveX = lengthdir_x(speed, direction);
moveY = lengthdir_y(speed, direction);

// COLLISION CHECKS - SOLIDS

if (place_meeting(x+moveX, y, oSolidParent) || place_meeting(x, y+moveY, oSolidParent)) {
	speed = 0;
}

	
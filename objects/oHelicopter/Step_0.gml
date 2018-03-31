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
	if (input_up){
		accel += .1;
		accel = clamp(accel,-2,2);
		speed = clamp(speed+accel, -5, 5);
	} else if (input_down){
		accel -= .1;
		accel = clamp(accel,-2,2);
		speed = clamp(speed+accel, -5, 5);
	}
	else{		
		speed += -sign(speed)*.1;
		accel += -sign(speed)*.1;
		accel = clamp(accel,-2,2);
		if (abs(speed)<.2){
			speed = 0;	
			accel = 0;
		}
	}
}

direction += (input_left-input_right)*n_spd;


// RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

// INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;


// COLLISION CHECKS - SOLIDS
// Horizontal
if (moveX != 0) {
	if (place_meeting(x+moveX, y, oSolidParent)) {
		repeat (abs(moveX)) {
			if (!place_meeting(x+sign(moveX), y, oSolidParent)) { y += sign(moveX);}
			else { break; }
		}
		moveX = 0;
	}
}

// Vertical
if (moveY != 0) {
	if (place_meeting(x, y+moveY, oSolidParent)) {
		repeat (abs(moveY)) {
			if (!place_meeting(x, y+sign(moveY), oSolidParent)) { y += sign(moveY);}
			else { break; }
		}
		moveY = 0;
	}
}

// APPLY MOVEMENT
//x += moveX;
//y += moveY;


	
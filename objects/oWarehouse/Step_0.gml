/// @description  

if (canPickupItems) {
	if (point_distance(oHelicopter.x, oHelicopter.y, x, y) <= 4*16) {
		oHelicopter.storage += irandom_range(5, 10);
		canPickupItems = false;
		alarm[0] = room_speed;
	}
}

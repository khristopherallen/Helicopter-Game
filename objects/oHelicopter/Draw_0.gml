/// @description 

//if (moveX != 0 || moveY != 0) {
//	//pointdir += point_direction(0, 0, moveX, moveY)*0.05;
//}
//pointdir += point_direction(0, 0, moveX, moveY);

angle = direction;
bladeAngle += 40;
bladeAngle = bladeAngle%360

draw_sprite_ext(sHelicopterColors, oGame.color, x, y, image_xscale, image_yscale, angle, image_blend, image_alpha);
draw_sprite_ext(sHelicopterBlades, oGame.bladeColor, x, y, image_xscale, image_yscale, bladeAngle, image_blend, image_alpha);



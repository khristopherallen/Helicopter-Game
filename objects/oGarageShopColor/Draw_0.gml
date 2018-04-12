/// @description  

draw_set_halign(fa_left);
draw_text_transformed(16+16, 16+signHeight+32, "Color", 2, 2, 0);
draw_set_halign(fa_center);

// Draw color buttons
for (j = 0; j <buttonsV; j++) {
	for (i = 0; i < buttonsH; i++) {
		currentButton = instance_create_layer(16+8+i*34+i*4, 16+signHeight*2+4+j*4+j*34, "Buttons", oShopButtonColor);
		currentButton.image_index = color;
		color++;
	}
}


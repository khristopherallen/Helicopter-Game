/// @description 

signHeight = oGarageShop.signHeight;
side = 34;
buttonsH = 8;
buttonsV = 2;
bladeColor = 0;

// Draw color buttons
for (j = 0; j <buttonsV; j++) {
	for (i = 0; i < buttonsH; i++) {
		currentButton = instance_create_layer(16+8+i*34+i*4, 16+signHeight*4+4+j*4+j*34, "Buttons", oShopButtonColor);
		currentButton.image_index = bladeColor;
		currentButton.type = 1;
		bladeColor++;
	}
}

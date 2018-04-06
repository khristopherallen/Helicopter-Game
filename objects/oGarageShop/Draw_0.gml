/// @description  

// Draw left shop
draw_rectangle(16, 16, 16+shopWidth, 16+shopHeight, true);

// Draw left sign
draw_line(16, 16+signHeight, 16+shopWidth, 16+signHeight);
draw_text_transformed(16+shopWidth/2, 16+signHeight/2, "CUSTOMIZE", 2, 2, 0);


// Draw right shop
draw_rectangle(rightShopX, 16, rightShopX+shopWidth, 16+shopHeight, true);

// Draw right sign
draw_line(rightShopX, 16+signHeight, rightShopX+shopWidth, 16+signHeight);
draw_text_transformed(rightShopX+shopWidth/2, 16+signHeight/2, "UPGRADE", 2, 2, 0);

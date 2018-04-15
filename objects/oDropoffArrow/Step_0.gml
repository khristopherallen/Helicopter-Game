/// @description  

var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);
var hx = oHelicopter.x;
var hy = oHelicopter.y;

x = oDropoffLocation.x;
y = oDropoffLocation.y;

x = clamp(x, camX+20, camX + camera_get_view_width(view_camera[0]) - 20);
y = clamp(y, camY+20, camY + camera_get_view_height(view_camera[0]) - 20);

image_angle = point_direction(hx, hy, oDropoffLocation.x, oDropoffLocation.y)-90;


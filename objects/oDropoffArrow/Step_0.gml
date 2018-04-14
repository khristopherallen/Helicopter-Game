/// @description  

var camW = view_wport[0];
var camH = view_hport[0];

x = oDropoffLocation.x;
y = oDropoffLocation.y;

//x = clamp(x, camX+view_get_wport(0), camY);
//y = clamp(y, camY+view_get_hport(0), camX);
x = clamp(x, x+camW/2, x-camW/2);
y = clamp(y, y+camH/2, y-camH/2);

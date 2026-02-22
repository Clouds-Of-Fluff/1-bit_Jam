// Centro
var cx = camera_get_view_width(view_camera[0]) * 0.5;
var cy = camera_get_view_height(view_camera[0]) * 0.5;

state = 0; // 0 cubrir, 1 mover, 2 esperar, 3 descubrir
progress = 0;
spd = 0.02;
wait = 1;

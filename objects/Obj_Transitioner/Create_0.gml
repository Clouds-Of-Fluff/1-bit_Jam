// Init
progress = 0; // 0 a 1
spd = 0.02;

active = true;
accept = false;

index = Obj_Levels.index;
// Time
wait = 3;

// Arrow
var X = camera_get_view_width(view_camera[0])*2 / 2;
var Y = camera_get_view_height(view_camera[0])*2 / 2;

points = [
    [X-160, Y-32],
    [X-96, Y-64],
    [X-32, Y-96],
    [X+32, Y-128],
    [X+112, Y-160]
];

current_point = index;
ax = points[index][0];
ay = points[index][1];

move_speed = 0.05; // velocidad del lerp
moving = true;
time = 60;
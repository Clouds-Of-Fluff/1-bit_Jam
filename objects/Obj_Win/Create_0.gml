// Cam
cam = view_camera[0];
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);

// Def
if (Obj_Main.money > 500000) {
	win = true;
} else {
    win = false;
}

// Texts
if (win) {
	text = "YOU WIN!!"
    symbol = "+";
    aspect = 1;
    
} else {
    text = "You lose"
    symbol = "-";
    aspect = -1;
}

// Particles
particles = [];
spawn_timer = 0;
spawn_rate = 10; // every 10 frames

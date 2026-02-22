var left  = x - bar_width/2;
var right = x + bar_width/2;
var top   = y - bar_height/2;
var bot   = y + bar_height/2;

// Detectar click dentro del slider
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, left - 4, top, right + 4, bot)) {
        dragging = true;
        
    }
}

// Soltar mouse
if (mouse_check_button_released(mb_left)) {
    dragging = false;
    
}

// Mientras arrastra
if (dragging) {
    value = (mouse_x - left) / bar_width;
    value = clamp(value, 0, 1);
    
    global.master_volume = value;
    
}

// Destroy
if (!Obj_MainMenu.selection_locked) {
	instance_destroy();
    
}

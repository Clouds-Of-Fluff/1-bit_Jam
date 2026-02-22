// Visual
image_index = global.settings[$ key];
image_xscale = size;
image_yscale = size;

// Reaction
if (active) {
	size = lerp(size, 1.1, 0.5);
    
} else {
    size = lerp(size, 1.0, 0.5);
    
}

// Action
if (point_in_rectangle(mouse_x, mouse_y, x - (sprite_width / 2), y - (sprite_height / 2),
    x + (sprite_width / 2), y + (sprite_height / 2)) and mouse_check_button_pressed(mb_left)) {
	
    global.settings[$ key] = !global.settings[$ key];
    audio_play_sound(choice, 1, false, 0.1);
    
}

// Destroy
if (!Obj_MainMenu.selection_locked) {
	instance_destroy();
    
}

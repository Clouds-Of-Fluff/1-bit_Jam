/// Return
if (selection_locked and keyboard_check_pressed(vk_escape)) {
	selection_locked = false;
    
}

/// Buttons
var spd = 64;
if (X > -64 and selection_locked) {
    X -= spd;
    
} else if (X < (cw / 2) and !selection_locked) {
    X += spd;
    
}

// Mouse
hover_button = noone;

// Outline
with (Obj_ButtonMenu) {
    if (point_in_rectangle(mouse_x, mouse_y, x - btn_width/2, 
        y - btn_height/2, x + btn_width/2, y + btn_height/2)) {
        
        other.hover_button = id;
        
    }
    
}

// Sound
if (hover_button != last_hover_button) {
    if (hover_button != noone) {
        audio_play_sound(select, 1, false, 0.1);
    }
}

last_hover_button = hover_button;

// Select
if (hover_button != noone and mouse_check_button_pressed(mb_left)) {
	audio_play_sound(choice, 1, false, 0.1);
    
}

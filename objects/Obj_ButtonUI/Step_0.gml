#region Actions
// Click
if (point_in_rectangle(mouse_x, mouse_y, x - (sprite_width/2), y - (sprite_height/2), 
    x + (sprite_width/2), y + (sprite_height/2)) and mouse_check_button_pressed(mb_left)) {
	
    active = !active; // This line return the contrary of the actual value
    
    // Selection
    if (value == 0) {
        show_debug_message("BAD ANSWER");
        
    } else {
        show_debug_message("GOOD ANSWER");
        
    }
    
}


// Reaction "lerp(actual value, objective value, change velocity)"
if (!active) { // False
	size = lerp(size, 0.9, 0.5);
    
} else { // True
    size = lerp(size, 1.0, 0.5);
    
}

// Change size
image_xscale = size;
image_yscale = size;

#endregion


#region Questions
// Chage state and elimination
if (image_xscale <= 0.91 and image_yscale <= 0.91) {
    // avisar al controller
    with (Obj_QuestionsController) {
        state = QSTATE.TRANSITION;
        
    }
    
	// destruir ambos botones
    with (Obj_ButtonUI) {
        instance_destroy();
        
    }
    
}

#endregion


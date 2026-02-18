#region Questions
// Chage state and elimination
if (image_xscale <= 0.9 and image_yscale <= 0.9) {
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


#region Text
// Calculate desired size
var text_w = string_width(text);
var text_h = string_height(text);

btn_width  = max(min_width, text_w + padding_x * 2);
btn_height = text_h + padding_y * 2;

#endregion


#region Actions
// Click
if (!Obj_QuestionsController.selection_locked and 
    point_in_rectangle(mouse_x, mouse_y, x - (btn_width/2), y - (btn_height/2), 
    x + (btn_width/2), y + (btn_height/2)) and 
    mouse_check_button_pressed(mb_left)) {
	
    // Change locked
    Obj_QuestionsController.selection_locked = true;
    active = false; // False to answer
    
    // Selection
    if (value == 0) {
        Obj_Main.bad++;
        Obj_Main.money -= 200000;
        
        show_debug_message("BAD ANSWER");
        
    } else {
        Obj_Main.good++;
        Obj_Main.money += 200000;
        
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


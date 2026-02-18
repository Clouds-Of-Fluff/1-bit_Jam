// Block with transitioner
if (instance_exists(Obj_Transitioner)) {
    exit;
}

// Mouse relessed
if (!mouse_check_button(mb_left)) {
    mouse_released = true;
    
}

// Next text
if (state == TSTATE.WRITING) {
    if (mouse_check_button_pressed(mb_left) && mouse_released) {
        mouse_released = false;
        
        visible_text = full_text;
        text_pos = string_length(full_text);
        state = TSTATE.WAIT_INPUT;
    }
}

// State
switch (state) {
    case TSTATE.WRITING:
        text_timer++;
        
        if (text_timer >= text_speed) {
            text_timer = 0;
            
            if (text_pos < string_length(full_text)) {
                text_pos++;
                visible_text = string_copy(full_text, 1, text_pos);
                
            } else {
                state = TSTATE.WAIT_INPUT;
                
            }
        }
        
    break;
    
    
    case TSTATE.WAIT_INPUT:
        if ((mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) 
            && mouse_released) {
            
            mouse_released = false;
            page_index++;
            
            if (page_index < array_length(pages)) {
                full_text = pages[page_index];
                visible_text = "";
                text_pos = 0;
                state = TSTATE.WRITING;
                
            } else {
                state = TSTATE.FINISHED;
                
            }
        }
    break;
}


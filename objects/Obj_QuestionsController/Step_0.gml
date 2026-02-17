// Change of state
switch (state) {
    
    case QSTATE.WRITING:
        text_timer++;
        
        if (text_timer >= text_speed) {
            text_timer = 0;
            
            if (text_pos < string_length(full_text)) {
                text_pos++;
                visible_text = string_copy(full_text, 1, text_pos);
                
            } else {
                state = QSTATE.WAITING;
                
            }
        }
        
    break;
    
    case QSTATE.WAITING:
        if (!buttons_created) {
            // Bad Choice
            var btn_bad = instance_create_layer(X2-128, Y1+48, "Instances", Obj_ButtonUI);
            btn_bad.value = bad_value;
            btn_bad.text = bad_text;
            
            // Good Choice
            var btn_good = instance_create_layer(X2-72, Y1+48, "Instances", Obj_ButtonUI);
            btn_good.value = good_value;
            btn_good.text = good_text;
            
            // Variable
            buttons_created = true;
            
        }
        
    break;
    
    case QSTATE.TRANSITION:
        index++;
        current_question = Scr_Questions(index);
        
        // Select another question
        if (current_question != undefined) {
            full_text = current_question[0];
            visible_text = "";
            text_pos = 0;
            
            bad_value = current_question[1];
            good_value = current_question[2];
            
            buttons_created = false;
            state = QSTATE.WRITING;
            
        } else {
            show_debug_message("No more questions.");
            
        }
        
    break;
}

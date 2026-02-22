// Block state
var t = instance_find(Obj_Transitioner, 0);
if ((instance_exists(t) and t.progress <= 0) or (instance_exists(t) and t.progress > 0) or 
    Obj_Game.state != TSTATE.FINISHED) {
    
	exit;
    
}

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
            var btn_1 = instance_create_layer(X2 - 112, Y1 - 96, "Instances", Obj_ButtonGame);
            btn_1.value = value1;
            btn_1.text = text1;
            
            // Good Choice
            var btn_2 = instance_create_layer(X2 - 112, Y1 - 32, "Instances", Obj_ButtonGame);
            btn_2.value = value2;
            btn_2.text = text2;
            
            // Variable
            buttons_created = true;
            
        }
        
    break;
    
    case QSTATE.TRANSITION:
        current_question = Scr_Questions(index);
        
        // Select another question
        if (current_question != undefined) {
            full_text = current_question[0];
            visible_text = "";
            text_pos = 0;
            
            // Buttons
            value1 = current_question[1];
            value2 = current_question[2];
            text1 = current_question[3];
            text2 = current_question[4];
            
            buttons_created = false;
            selection_locked = false;
            
            state = QSTATE.WRITING;
            
        }
        
    break;
}

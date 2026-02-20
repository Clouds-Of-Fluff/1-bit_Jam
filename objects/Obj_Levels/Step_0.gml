var q = instance_find(Obj_QuestionsController, 0);

// Exit if controller doesn´t exist
if (!instance_exists(q)) exit;

// If the question changed and we are not changing
if (q.state == QSTATE.TRANSITION && !changing) {
    changing = true;
    
    if (!instance_exists(Obj_Transitioner)) {
        instance_create_depth(0, 0, -1000, Obj_Transitioner);
        
    }
}

// Change to next level
var t = instance_find(Obj_Transitioner, 0);
if (changing && instance_exists(t)) {
    if (t.progress >= 1) {
        
        index++;
        
        if (index < array_length(rooms)) {
            room_goto(rooms[index]);
            
        }
        
        changing = false;
    }
}


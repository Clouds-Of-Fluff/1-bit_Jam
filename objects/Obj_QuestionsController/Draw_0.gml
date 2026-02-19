// Block state
var t = instance_find(Obj_Transitioner, 0);
if (instance_exists(Obj_Transitioner) and t.progress > 0 or Obj_Game.state != TSTATE.FINISHED) {
	exit;
    
}

// Draw text
Scr_DialogueBox(snake_boss, "Secretary Snake:", visible_text, state);

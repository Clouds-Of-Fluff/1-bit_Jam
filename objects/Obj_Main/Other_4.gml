// Levels
if (instance_exists(Obj_Levels)) {
	index = Obj_Levels.index;
}

// Winner
if (room_get_name(room) == "Rm_Level5" and Obj_Transitioner.state >= 0) {
    instance_create_layer(0, 0, self.layer, Obj_Win);
    
	instance_destroy(Obj_Levels);
	instance_destroy(Obj_UI);
    
}
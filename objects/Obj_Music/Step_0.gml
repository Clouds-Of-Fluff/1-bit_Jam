// Room name
var rname = room_get_name(room);

if (rname == "Rm_Menu") {
    target_index = 0;
    
} else if (rname == "Rm_Level5") {
    target_index = 6;
    
} else if (instance_exists(Obj_Levels)) {
    target_index = Obj_Levels.index + 1;
    
}

// Fade
if (target_index != current_index) {
    audio_sound_gain(handles[current_index], 0, fade_time);
    audio_sound_gain(handles[target_index], 1, fade_time);
    
    current_index = target_index;
}

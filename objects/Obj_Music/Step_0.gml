// Room name
var rname = room_get_name(room);

if (rname == "Rm_Menu") {
    target_index = 0;
    
} else if (rname == "Rm_Level5") {
    if (Obj_Main.money > 500000 and !out) {
    	target_index = 6;
        out = true;
        
    } else if (Obj_Main.money < 500000 and !out) {
        target_index = 7;
        audio_play_sound(lose_theme_1bit_jam, 1, false);
        out = true;
        
    }
    
    
} else if (instance_exists(Obj_Levels)) {
    target_index = Obj_Levels.index + 1;
    
}

// Fade
if (target_index != current_index) {
    audio_sound_gain(handles[current_index], 0, fade_time);
    audio_sound_gain(handles[target_index], 1, fade_time);
    
    current_index = target_index;
}

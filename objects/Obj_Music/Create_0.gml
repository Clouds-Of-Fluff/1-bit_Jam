// Tracks
music = [
    main_menu_1bit_jam, // Menu
    stage_1_1bit_jam, // 1
    stage_2_1bit_jam, // 2
    stage_3_1bit_jam, // 3
    stage_4_1bit_jam, // 4
    stage_5_1bit_jam, // 5
    win_loop_track_1bit_jam,  // Win
    lose_theme_1bit_jam // Lose
    
];

// Handles
handles = [];

// Play all in loop
for (var i = 0; i < array_length(music); i++) {
    if (i != 7) {
    	handles[i] = audio_play_sound(music[i], 1, true);
        audio_sound_gain(handles[i], 0, 0); // volume 0
        
    } else {
        handles[i] = audio_play_sound(music[i], 1, false);
        audio_sound_gain(handles[i], 0, 0); // volume 0
        
    }
    
    
}

// Index
current_index = 0;
target_index = 0;
fade_time = 1000; // 1 sec

// Menu
audio_sound_gain(handles[0], 1, 0);

// End
out = false;

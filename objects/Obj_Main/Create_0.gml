// Settings
global.settings = {
    fullscreen: true,
    music: true,
    sfx: true
};

global.master_volume = 1; // 0 to 1

// Font
draw_set_font(Fnt_Silver);

// Sound
audio_group_load(audiogroup_default);
audio_group_set_gain(audiogroup_default, global.settings.music);

// Effects
gpu_set_tex_filter(false);

// Color
draw_set_colour(c_white);

// Window
window_set_size(room_width*1.8, room_height*1.8);
window_center();

// Misc
randomise();

// GAME
good = 0;
bad = 0;
money = 0;
index = 0;


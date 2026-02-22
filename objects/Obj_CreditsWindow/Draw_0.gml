// Draw self
draw_self();

// Draw_text
draw_set_alpha(image_alpha);

var sw = sprite_width;
var sh = sprite_height;
var wm = sw/2;
var hm = sh/2;
draw_set_halign(fa_center);

// Pref
draw_text(x, y - hm + 16, pref);

// Text
draw_text(x, y - hm + 32, text);

// Reset
draw_set_alpha(1);

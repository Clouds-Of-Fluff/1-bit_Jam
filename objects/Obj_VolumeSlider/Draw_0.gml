var left = x - bar_width / 2;

// Outline
draw_sprite_ext(sprite_index, 0, x, y, bar_width / sprite_width + 1, 1, 0, c_white, 1);

// Fill
draw_sprite_ext(sprite_index, 1, left + (bar_width * value) / 2, 
y, (bar_width * value) / sprite_width + 1, 1, 0, c_white, 1);

// Knob
var knob_x = left + bar_width * value;
var scale = 1;

if (point_in_rectangle(mouse_x, mouse_y, left - 4, y - 16, left + bar_width + 4, y + 16)) {
    scale = 1.2;
}

draw_sprite_ext(sprite_index, 2, knob_x, y, scale, scale, 0, c_white, 1);

// Value and text
draw_set_halign(fa_center);
draw_text_transformed(x - bar_width / 4, y - 64, "General:", 2, 2, 0);
draw_text(x, y - 24, "Audio: " + string_format(value * 100, 1, 0));
draw_set_halign(fa_left);

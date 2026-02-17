// Draw itself
draw_self();

// Draw text
draw_set_halign(fa_center);
draw_text_transformed(x, (y - 8) * image_yscale, text, image_xscale, image_yscale, 0);
draw_set_halign(fa_left);

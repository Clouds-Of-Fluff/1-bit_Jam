// Draw itself
draw_sprite_stretched(sprite_index, image_index, x - btn_width * 0.5 * image_xscale, 
(y - btn_height * 0.5) * image_yscale, btn_width * image_xscale, btn_height * image_yscale);

// Draw text
draw_set_halign(fa_center);
draw_text_transformed(x, (y - 8) * image_yscale, text, image_xscale, image_yscale, 0);
draw_set_halign(fa_left);

/// Hover
with (hover_button) {
    if (point_in_rectangle(mouse_x, mouse_y, x - btn_width / 2,
        y - btn_height / 2, x + btn_width / 2, y + btn_height / 2)) {
        
        var ext = 2;
        var bounce = sin(current_time / 150);
        
        draw_sprite_stretched(button_outline, 0, 
        x - btn_width / 2 - ext, 
        ((y - btn_height / 2 - ext) + bounce) * image_yscale, 
        btn_width + (ext * 2), 
        (btn_height + (ext * 2) + bounce) * image_yscale);
    }
    
}

/// Game Icon
draw_sprite_ext(name_game, 0, X, Y / 2, 2, 2, 0, c_white, 1);

/// Buttons
with (hover_button) {
    if (point_in_rectangle(mouse_x, mouse_y, x - btn_width / 2,
        y - btn_height / 2, x + btn_width / 2, y + btn_height / 2)) {
        
        var ext = 2;
        var bounce = sin(current_time / 150);
        
        draw_sprite_stretched(button_outline, 0, 
        x - btn_width / 2 - ext, 
        (y - btn_height / 2 - ext) + bounce, 
        btn_width + (ext * 2), 
        btn_height + (ext * 2) + bounce);
    }
    
}

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Scr_DialogueBox(sprite, name, text, state) {
    // Misc var
    cam = view_camera[0];
    cw = camera_get_view_width(cam);
    ch = camera_get_view_height(cam);
    X1 = 0;
    X2 = cw;
    Y1 = ch-96;
    Y2 = ch;
    
    // Draw rectangles
    draw_set_colour(c_white);
    draw_rectangle(0, Y1, X2, Y2, false);
    draw_set_colour(#0F1449);
    draw_rectangle(4, Y1 + 4, X2 - 4, Y2 - 4, false);
    draw_set_colour(c_white);
    
    // Draw Character
    draw_set_colour(c_white);
    draw_rectangle(14, Y1 + 14, 82, Y2 - 14, false);
    draw_sprite_part_ext(sprite, 0, 12, 0, 48, 48, 16, Y1 + 16, 1.33, 1.33, c_white, 1);
    
    // Draw Text
    var bounce = sin(current_time / 150) * 1;
    draw_text(96, Y1 + 8, name);
    draw_text(96, (Y1 + 24) + bounce, text);
    
    // Draw triangle
    if (state == TSTATE.WAIT_INPUT) {
    	draw_sprite_ext(triangle, 0, X2-16, (Y2-16)-bounce, 0.5, 0.5, 90, c_white, 1);
    }
}
function Scr_DialogueBox(sprite, name, text, state, type) {
    // Misc var
    var cam = view_camera[0];
    var cw = camera_get_view_width(cam);
    var ch = camera_get_view_height(cam);
    var X1 = 0;
    var X2 = cw;
    var Y1 = ch-96;
    var Y2 = ch;
    var bounce = sin(current_time / 150) * 1;
    
    // Draw triangle
    if (state == TSTATE.WAIT_INPUT) {
    	draw_sprite_ext(triangle, 0, X2-16, (Y2-16)-bounce, 0.5, 0.5, 90, c_white, 1);
        
    }
}
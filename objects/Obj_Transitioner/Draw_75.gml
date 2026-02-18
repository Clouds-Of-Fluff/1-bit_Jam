if (progress >= 1) {
    var X = camera_get_view_width(view_camera[0])*2 / 2;
    var Y = camera_get_view_height(view_camera[0])*2 / 2;
    
	draw_sprite_ext(stairs, 0, X, Y, 2, 2, 0, c_white, 1);
    
    // arrow
    if (time > 0) {
    	time--;
        
    } else {
        moving = true;
        
    }
    
    if (moving and current_point < array_length(points)) {
        var tx = points[current_point][0];
        var ty = points[current_point][1];
        
        ax = lerp(ax, tx, move_speed);
        ay = lerp(ay, ty, move_speed);
        
        // Cuando esté suficientemente cerca
        if (point_distance(ax, ay, tx, ty) < 1) {
            ax = tx;
            ay = ty;
            
            current_point++;
            
            if (current_point >= index) {
                moving = false;
                time = 60;
                
                // Aquí puedes avisar que terminó
                finished = true;
            }
        }
        
    } else if (moving and current_point > array_length(points)) {
        moving = false;
        current_point = array_last(points);
        time = 60;
        finished = true;
        
    }
    
    // Draw triangle
    draw_sprite_ext(triangle, 0, ax, ay, 2, 2, 0, c_white, 1);
    
}
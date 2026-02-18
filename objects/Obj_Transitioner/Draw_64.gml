var fact = 2;
var cell = 8 * fact;

var cols = ceil(camera_get_view_width(view_camera[0]) / cell);
var rows = ceil(camera_get_view_height(view_camera[0]) / cell);
var total = cols * rows;
var vis = floor(total * progress);

var count = 0;
var mode = 1;

// Draw transition
for (var Y = 0; Y < rows; Y++) {
    for (var X = 0; X < cols; X++) {
        if (count < vis) {
            draw_sprite_ext(transition_cube, 0, (cell / 2 * fact) + X * (cell * fact), 
            (cell / 2 * fact) + Y * (cell * fact), fact, fact, 0, c_white, 1);
            
        }
        
        count++;
        
    } 
}


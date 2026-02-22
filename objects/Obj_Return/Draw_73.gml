var fact = 4;
var cell = 8 * fact;

var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
var cols = ceil(cw / cell);
var rows = ceil(ch / cell);
var total = cols * rows;
var vis = floor(total * progress);
var count = 0;

// Cubos
for (var yy = 0; yy < rows; yy++) {
    for (var xx = 0; xx < cols; xx++) {
        if (count < vis) {
            draw_sprite_ext(transition_cube, 0, (cell * 0.5) + xx * cell, 
            (cell * 0.5) + yy * cell, fact, fact, 0, c_white, 1);
            
        }
        
        count++;
        
    }
}

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

// Dibujar escalera + flecha cuando está cubierto
if (progress >= 1) {
    var cx = cw * 0.5;
    var cy = ch * 0.5;
    
    draw_sprite_ext(stairs, 0, cx, cy, 2, 2, 0, c_white, 1);
    draw_sprite_ext(triangle, 0, ax, ay, 2, 2, 0, c_white, 1);
}


var data = [
    "t:"+ string(target_index),
    "s:"+ string(start_index),
    
]

for (var i = 0; i < array_length(data); i++) {
	draw_text(64, 16*i, data[i]);
}
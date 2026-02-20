if (instance_exists(Obj_Transitioner)) {
	exit;
}

// Array of data
var data = [
    "Balance: " + string(Obj_Main.money),
    //"Bad answer: " + string(Obj_Main.bad),
    //"Good answers: " + string(Obj_Main.good),
    "Scene: " + string(Obj_Levels.index+1)
];

var start_x = 16;
var start_y = 48;

var row_spacing = 32;
var col_spacing = 256; // espacio horizontal entre columnas

var max_per_column = 1;

for (var i = 0; i < array_length(data); i++) {
    var row = i mod max_per_column;
    var col = i div max_per_column;
    
    var xx = start_x + (col * col_spacing);
    var yy = start_y + (row * row_spacing);
    
    draw_text_transformed(xx, yy, data[i], 2, 2, 0);
    
}

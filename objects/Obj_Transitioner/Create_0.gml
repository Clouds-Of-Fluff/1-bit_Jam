if (instance_exists(Obj_Levels)) {
    target_index = Obj_Levels.index+1;
    
} else {
    target_index = 0;
    
}

// Punto anterior
start_index = max(0, target_index - 1);

// Centro
var cx = camera_get_view_width(view_camera[0]) * 0.5;
var cy = camera_get_view_height(view_camera[0]) * 0.5;

// Puntos
points = [
    [cx-228, cy],       //0
    [cx-160, cy-32],    //1
    [cx-96,  cy-64],    //2
    [cx-32,  cy-96],    //3
    [cx+32,  cy-128],   //4
    [cx+112, cy-160]    //5
];

// Flecha empieza en el punto anterior
ax = points[start_index][0];
ay = points[start_index][1];

// Guardamos destino directo
dest_x = points[target_index][0];
dest_y = points[target_index][1];

move_speed = 0.08;

state = 0; // 0 cubrir, 1 mover, 2 esperar, 3 descubrir
progress = 0;
spd = 0.02;
wait = 1;

switch (state) {
    case 0: // Cubrir pantalla
        progress += spd;
        
        if (progress >= 1) {
            progress = 1;
            state = 1;
        }
        
    break;
    
    
    case 1: // Mover flecha
        ax = lerp(ax, dest_x, move_speed);
        ay = lerp(ay, dest_y, move_speed);
        
        if (point_distance(ax, ay, dest_x, dest_y) < 1) {
            ax = dest_x;
            ay = dest_y;
            
            // Saltar del menu al primer nivel
            if (room_get_name(room) == "Rm_Menu") {
            	room_goto(Rm_Level0);
                
            }
            
            // Ya llegó
            state = 2;
            
        }
        
    break;
    
    
    case 2: // Esperar
        wait -= delta_time / 1000000;
        
        if (wait <= 0) {
            state = 3;
            
        }
        
    break;
    
    
    case 3: // Descubrir
        progress -= spd;
        
        if (progress <= 0) {
            progress = 0;
            instance_destroy();
        }
        
    break;
}

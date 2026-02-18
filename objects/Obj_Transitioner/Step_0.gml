// Active
if (active) {
    if (progress < 1) {
    	progress += spd;
    }
    
    if (progress >= 1) {
        progress = 1;
        active = false;
        accept = true;
        
    }
}

// Reset
if (accept) {
    if (wait > 0) {
    	wait -= delta_time / 1000000;
        
    } else {
        
        if (progress > 0) {
        	progress -= spd;
            
        } else {
            instance_destroy();
            
        }
    }
}

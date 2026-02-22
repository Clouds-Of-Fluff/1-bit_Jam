#region PARTICLES
spawn_timer++;

if (spawn_timer >= spawn_rate) {
    spawn_timer = 0;
    
    if (win) {
    	var p = {
            x: random(cw),
            y: ch + 16,
            speed_y: random_range(1, 3),
            alpha: 0,
            life: 120,
            max_life: 120,
            value: random_range(100, 1000)
        };
        
    } else{
        var p = {
            x: random(cw),
            y: 16,
            speed_y: random_range(-3, -1),
            alpha: 0,
            life: 120,
            max_life: 120,
            value: random_range(100, 1000)
        };
        
    }
    
    
    
    array_push(particles, p);
}

// Update
for (var i = array_length(particles) - 1; i >= 0; i--) {
    var p = particles[i];
    
    p.y -= p.speed_y;
    p.life--;
    
    // Fade in/out
    var t = 1 - (p.life / p.max_life);
    
    if (t < 0.2) {
        p.alpha = t / 0.2;
        
    } else if (t > 0.8) {
        p.alpha = (1 - t) / 0.2;
        
    } else {
        p.alpha = 1;
        
    }
    
    if (p.life <= 0) {
        array_delete(particles, i, 1);
        
    }
}

#endregion 

#region BUTTONS
if (!instance_exists(Obj_ButtonGame)) {
	var r = instance_create_layer(128, ch - 32, self.layer, Obj_ButtonGame);
    r.text = "Main menu";
    
}

#endregion
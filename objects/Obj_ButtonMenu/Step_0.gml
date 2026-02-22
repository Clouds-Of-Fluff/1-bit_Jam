#region MENU
x = Obj_MainMenu.X;

#endregion


#region Text
// Calculate desired size
var text_w = string_width(text);
var text_h = string_height(text);

btn_width  = max(min_width, text_w + padding_x * 2);
btn_height = text_h + padding_y * 2;

#endregion


#region Visual
// Click
if (!Obj_MainMenu.selection_locked and 
    point_in_rectangle(mouse_x, mouse_y, x - (btn_width/2), y - (btn_height/2), 
    x + (btn_width/2), y + (btn_height/2)) and 
    mouse_check_button_pressed(mb_left)) {
	
    // Change locked
    Obj_MainMenu.selection_locked = true;
    active = true;
    
}

// Reaction "lerp(actual value, objective value, change velocity)"
if (active) { // True
	size = lerp(size, 0.95, 0.5);
    
} else { // False
    size = lerp(size, 1.0, 0.5);
    
}

// Change size
image_xscale = size;
image_yscale = size;

#endregion


#region Actions
// Active
if (active) {
	switch (text) {
    	case "Play":
            if (!instance_exists(Obj_Transitioner)) {
            	   instance_create_layer(0, 0, self.layer, Obj_Transitioner);
            }
            
            // Reset
            active = false;
            
        break;
        
        case "Settings":
            if (!instance_exists(Obj_SettingsButton)) {
                var X = 128;
                var Y = 128;
                var d = self.depth;
                
                //// Music
                var s = instance_create_depth(X * 1.5, Y, d - 100, Obj_VolumeSlider);
                
                // Fullscreen
            	var f = instance_create_depth(X, Y + 32, d - 100, Obj_SettingsButton);
                f.active = true;
                f.name = "Fullscreen";
                f.key = "fullscreen";
                
            }
            
            // Reset
            active = false;
            
            
        break;
        
        case "Credits":
            if (!instance_exists(Obj_CreditsWindow)) {
                
                instance_create_layer(room_width/2, room_height/2, 
                self.layer, Obj_CreditsWindow);
                
            }
            
            // Reset
            active = false;
            
        break;
        
        case "Exit":
            game_end();
            
        break;
        
        default:
            active = true;
            
        break;
    }
}

#endregion



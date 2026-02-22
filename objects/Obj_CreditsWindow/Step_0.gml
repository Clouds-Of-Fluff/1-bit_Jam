if (image_alpha < 1 and Obj_MainMenu.selection_locked) {
	image_alpha += 0.01;
    
} else if (image_alpha > 0 and !Obj_MainMenu.selection_locked) {
    image_alpha -= 0.1;
    
}

if (image_alpha <= 0) {
	instance_destroy();
}
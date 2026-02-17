/// Blink :P
if (blink > 0) {
	blink--;
    
} else {
    // Random
    if (irandom(10) >= 9 and wait >= 10) {
    	image_index = 1;
        
    }
    
    // Reset
    if (image_index == 1 and wait > 0) {
    	wait--;
        
    } else {
        image_index = 0;
        wait = 10;
        blink = 60;
        
    }
    
}

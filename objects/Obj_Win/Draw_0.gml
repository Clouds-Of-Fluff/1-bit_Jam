// Draw Particles
for (var i = 0; i < array_length(particles); i++) {
    var p = particles[i];
    
    draw_set_alpha(p.alpha);
    
    draw_text(p.x, p.y, symbol + string(p.value));
    draw_sprite_ext(arrow, 0, p.x+string_length(p.value)+16, p.y+8, 0.5, aspect*0.5, 0, c_white, 1);
}

draw_set_alpha(1);


// Draw end text
var bounce = sin(current_time / 150);
draw_set_halign(fa_center);
draw_text_transformed(cw / 2, ch / 3 - bounce, text, 4, 4, 0);

// Define stats
var data = [
    "Final money: " + string(Obj_Main.money),
    "Final scene: " + string(Obj_Main.index+1),
    "Bad answers: " + string(Obj_Main.bad),
    "Good answers: " + string(Obj_Main.good),
    
];

// Draw stats
draw_sprite_ext(button1, 0, ch / 2 + 140, cw * 0.36 + bounce, 3, 2.2, 0, c_white, 1);
for (var i = 0; i < array_length(data); i++) {
	draw_text(cw / 2, (ch / 2 + 16) + (16 * i) + bounce, data[i]);
    
}

// Draw return text
draw_text(cw / 2, ch - 16 - bounce, "Press SPACE to return to the menu");

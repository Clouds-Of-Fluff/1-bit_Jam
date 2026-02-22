// Self sprite
draw_self();

// Alpha
if (Obj_Game.state == TSTATE.FINISHED and alpha < 1) {
	alpha += 0.01;
    
} else if (Obj_Game.state != TSTATE.FINISHED and alpha > 0) {
    alpha -= 0.01;
    
}

// Draw text balloon
draw_set_alpha(alpha);

// Draw arrow
draw_arrow(X+sprite_width, Y+32, X+sprite_width-8, Y+32, 32);

// Draw ballon
var text = Obj_QuestionsController.visible_text
var tw = string_width(text);

// bck
draw_set_colour(#0F1449);
draw_roundrect(X + sprite_width, Y + 64, 
    (X + sprite_width) + (tw + 16), Y - 16, false);
draw_set_colour(c_white);

// outline
for (var i = 0; i < 8; i++) {
    var fact = i*0.2;
	draw_roundrect(X + sprite_width + fact, Y + 64 - fact, 
    (X + sprite_width) + (tw + 16) + fact, Y - 16 + fact, true);
    
}

// Draw name
var bounce = sin(current_time / 150) * 1;
draw_text(Obj_Snake.X + 136, Obj_Snake.Y - 12, "Secretary Snake:");
draw_text(Obj_Snake.X + 136, Obj_Snake.Y + 4 + bounce, text);

draw_set_alpha(1);
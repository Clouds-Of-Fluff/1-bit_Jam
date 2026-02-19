if (state == TSTATE.FINISHED) {exit;}

// Draw rectangles
draw_set_colour(c_white);
draw_rectangle(0, Y1, X2, Y2, false);
draw_set_colour(#0F1449);
draw_rectangle(4, Y1 + 4, X2 - 4, Y2 - 4, false);
draw_set_colour(c_white);

// Draw Boss
draw_set_colour(c_white);
draw_rectangle(14, Y1 + 14, 82, Y2 - 14, false);
draw_sprite(snake_boss, 0, 16, Y1 + 16);

// Draw Text
var bounce = sin(current_time / 150) * 1;
draw_text(96, Y1 + 16, "Narrator:");
draw_text(96, (Y1 + 32) + bounce, visible_text);

if (state == TSTATE.WAIT_INPUT) {
	draw_sprite_ext(triangle, 0, X2-16, (Y2-16)-bounce, 0.5, 0.5, 90, c_white, 1);
}
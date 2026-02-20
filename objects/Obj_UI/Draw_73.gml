if (instance_exists(Obj_Transitioner)) {
	exit;
}

// Draw top UI
draw_set_colour(c_white);
draw_rectangle(0, 0, X1, Y1, false);
draw_set_colour(#0F1449);
draw_rectangle(4, 4, X1 - 4, Y1 - 4, false);
draw_set_colour(c_white);

// Draw rectangles
draw_set_colour(c_white);
draw_rectangle(0, Y1, X2, Y2, false);
draw_set_colour(#0F1449);
draw_rectangle(4, Y1 + 4, X2 - 4, Y2 - 4, false);
draw_set_colour(c_white);

// Draw Character
draw_set_colour(c_white);
draw_rectangle(14, Y1 + 14, 82, Y2 - 14, false);
draw_sprite_part_ext(snake_boss, 0, 12, 0, 48, 48, 16, Y1 + 16, 1.33, 1.33, c_white, 1);

// Draw Text
var bounce = sin(current_time / 150) * 1;
draw_text(96, Y1 + 8, "Narrator:");
draw_text(96, (Y1 + 24) + bounce, visible_text);

//var str = "simons_turn: " + string(simons_turn);
//draw_text(10, 10, str);
//draw_text(10, 25, "simon_timer: " + string(simon_timer));
//draw_text(10, 40, "simon_loop: " + string(simon_loop));

//draw_text(170, 10, "complete[0]: " + string(complete[0]));
//draw_text(170, 25, "complete[1]: " + string(complete[1]));
//draw_text(170, 40, "complete[2]: " + string(complete[2]));
//draw_text(170, 55, "complete[3]: " + string(complete[3]));

draw_set_font(fnt_points);
draw_set_halign(fa_middle);
draw_text(view_wport[0] / 2, 20, "POINTS:\n" + string(points));
draw_set_halign(fa_left);
draw_set_font(-1);

draw_set_font(fnt_points);
draw_set_halign(fa_middle);
if (simons_turn) 
{
	draw_set_colour(c_red);
	draw_text(view_wport[0] / 2, view_hport[0] * 0.90, "SIMONS TURN");
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_lime);
	draw_text(view_wport[0] / 2, view_hport[0] * 0.90, "YOUR TURN");
	draw_set_colour(c_white);
}

draw_set_halign(fa_left);
draw_set_font(-1);
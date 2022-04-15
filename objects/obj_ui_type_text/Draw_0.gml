draw_set_font(type_font);
draw_set_halign(type_halign);
draw_set_valign(type_valign);
xx = x + random_range(-shake,shake);
yy = y + random_range(-shake,shake);
draw_text_colour(xx,yy,ausgabe,type_c1,type_c1,type_c3,type_c3,type_alpha);


if(fade){
	type_alpha -= 0.01
	if (type_alpha <= 0) {
	    instance_destroy();
	}
}
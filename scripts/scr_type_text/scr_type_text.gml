/// @function type_text(x,y,font,halign,valign,speed,text,color,color,effekt,alpha,back,time,audio,fadeout,shake)
/// @param x
/// @param y
/// @param font
/// @param halign
/// @param valign
/// @param speed
/// @param "text"
/// @param color
/// @param color
/// @param effekt 
/// @param alpha
/// @param back
/// @param time
/// @param audio
/// @param fadeout
/// @param shake
function scr_type_text(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15) {


	type_X = argument0;
	type_Y = argument1;
	object = instance_create_layer(type_X, type_Y, "layer_null", obj_ui_type_text)

	object.type_font = argument2;
	object.type_halign = argument3;
	object.type_valign = argument4;
	object.type_speed = argument5;
	object.type_c1 = argument7;
	object.type_c3 = argument8;
	object.effekt_1 = argument9;
	object.type_alpha = argument10;
	object.type_back = argument11;
	object.type_back_time = argument12;
	object.audio_play = argument13;
	object.fadeout = argument14;
	object.shake = argument15;
	object.ausgabe = "";
	object.text = argument6;
	object.leange = string_length(argument6);
	object.anfangs_zahl = 1;
	object.alarm[0] = 1;


}

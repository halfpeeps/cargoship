if(anfangs_zahl <= leange){
	if (zufall_buchstabe_zahl >= 0 && effekt_1 == true) {
		zufall_buchstabe_zahl -= 1;
	    buchstabe = string_char_at(zufall_buchstaben,random_range(1,round(string_length(zufall_buchstaben))));
		ausgabe += string(buchstabe);
		alarm[3] = 2;
	}else{
		zufall_buchstabe_zahl = 1;
		buchstabe = string_char_at(text,anfangs_zahl);
		ausgabe += string(buchstabe);
		anfangs_zahl += 1;
		alarm[2] = type_speed;
		if(audio_play == true && audio_is_playing(snd_type) == false){
			audio_play_sound(snd_type,100,false);
		}
	}
	
	
}else{
	alarm[1] = type_back_time;
}
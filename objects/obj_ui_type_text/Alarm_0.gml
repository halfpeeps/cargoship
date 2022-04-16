if (effekt_1 == false) {
	if(anfangs_zahl <= leange){
		buchstabe = string_char_at(text,anfangs_zahl);
		ausgabe += string(buchstabe);
		anfangs_zahl += 1;
		alarm[0] = type_speed;
		if(audio_play == true && audio_is_playing(snd_type) == false)
		{
			audio_play_sound(snd_type,100,false);
		}
	}else{
		alarm[1] = type_back_time;
	}
}else{
	alarm[2] = 1;
}
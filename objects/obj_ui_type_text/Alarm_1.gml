if (type_back) {
	if(anfangs_zahl > 1){
		ausgabe = string_delete(ausgabe,anfangs_zahl-1,anfangs_zahl);
		anfangs_zahl -= 1;
		alarm[1] = type_speed;
		if(audio_play == true && audio_is_playing(snd_type) == false){
			audio_play_sound(snd_type,100,false);
		}
	}else{
		instance_destroy();
	}
}else{
	if(fadeout){
		fade = true;
	}else{
		instance_destroy();
	}
}


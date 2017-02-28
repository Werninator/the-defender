if _state == OGAME_STATE.INTRO && alarm[0] == -1 {

	// intro room
	if room != rIntro
		room_goto(rIntro);

	// setz den ersten alarm
	alarm[0] = .5 * room_speed;
}
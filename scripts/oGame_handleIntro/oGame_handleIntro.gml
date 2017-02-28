// Logo spawnen
spawn(oLogo);

// state setzen, damit oGame__step_checkIntro() nicht wieder alarm[0] triggert
_state = OGAME_STATE.INTRO_SPAWNED;

// [0] ist fertig
alarm[0] = -1;

// restliche Dauer abwarten
alarm[1] = room_speed;
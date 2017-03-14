/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 5D617A2E
/// @DnDArgument : "timeline" "tlIntro"
/// @DnDSaveInfo : "timeline" "4e924a5d-daee-4705-ae7b-c34a4f4fc12e"

{
	timeline_index = tlIntro;
	timeline_loop = 0;
	timeline_running = 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72168D86
/// @DnDInput : 6
/// @DnDArgument : "expr_5" "60 * room_speed"
/// @DnDArgument : "var" "wood"
/// @DnDArgument : "var_1" "stone"
/// @DnDArgument : "var_2" "gold"
/// @DnDArgument : "var_3" "fabric"
/// @DnDArgument : "var_4" "nextWave"
/// @DnDArgument : "var_5" "waveInterval"
wood = 0;
stone = 0;
gold = 0;
fabric = 0;
nextWave = 0;
waveInterval = 60 * room_speed;


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0CA9A109
/// @DnDArgument : "steps" "waveInterval * room_speed"
alarm_set(0, waveInterval * room_speed);



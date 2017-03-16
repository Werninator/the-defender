/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 59AF19B7
/// @DnDArgument : "script" "wave_begin"
/// @DnDArgument : "arg" "nextWave"
/// @DnDSaveInfo : "script" "0452f429-db82-45a0-b0c5-255bdf846596"
script_execute(wave_begin, nextWave);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 13A2AAF0
/// @DnDArgument : "steps" "waveInterval * room_speed"
alarm_set(0, waveInterval * room_speed);



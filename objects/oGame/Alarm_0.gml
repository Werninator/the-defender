/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AEB8B8A
/// @DnDApplyTo : 0a6ad30f-a6b9-4af9-891a-4dabfefee799
/// @DnDArgument : "var" "nWaves"
/// @DnDArgument : "value" "amountWaves"
with(oLevelSettings) {
var nWaves = amountWaves;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3B14D69E
/// @DnDArgument : "expr" "nWaves == nextWave"
if(nWaves == nextWave)
{
	

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0E010008
	/// @DnDApplyTo : 0a6ad30f-a6b9-4af9-891a-4dabfefee799
	/// @DnDParent : 3B14D69E
	/// @DnDArgument : "room" "nextLevel"
	with(oLevelSettings)
	{
		room_goto( nextLevel );
	}


}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 59AF19B7
/// @DnDArgument : "script" "wave_begin"
/// @DnDArgument : "arg" "nextWave"
/// @DnDSaveInfo : "script" "0452f429-db82-45a0-b0c5-255bdf846596"
script_execute(wave_begin, nextWave);


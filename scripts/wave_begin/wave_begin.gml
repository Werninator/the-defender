/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 25F6FC16
/// @DnDArgument : "var" "waveNumber"
/// @DnDArgument : "value" "argument0"
var waveNumber = argument0;


/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 42E81403
/// @DnDApplyTo : 776e0f01-9a70-44fc-aa96-6141993487a4
with(oWave)
{
	

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2B6EA86D
	/// @DnDParent : 42E81403
	/// @DnDArgument : "expr" "number == waveNumber"
	if(number == waveNumber)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 31D360BA
			/// @DnDParent : 2B6EA86D
			/// @DnDArgument : "steps" "interval"
			alarm_set(0, interval);
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 74B88646
/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
/// @DnDArgument : "var" "nextW"
/// @DnDArgument : "value" "nextWave"
with(oGame) {
var nextW = nextWave;

}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6F4B88FB
/// @DnDApplyTo : 0a6ad30f-a6b9-4af9-891a-4dabfefee799
/// @DnDArgument : "expr" "amountWaves > nextW + 1"
with(oLevelSettings) var l6F4B88FB_0 = amountWaves > nextW + 1;
if(l6F4B88FB_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08C3D5B2
	/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
	/// @DnDParent : 6F4B88FB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "nextWave"
	with(oGame) {
	nextWave += 1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 40B5539B
	/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
	/// @DnDParent : 6F4B88FB
	/// @DnDArgument : "steps" "waveInterval * room_speed"
	with(oGame) {
	alarm_set(0, waveInterval * room_speed);
	
	}


}


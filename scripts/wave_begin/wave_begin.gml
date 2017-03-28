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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08C3D5B2
/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "nextWave"
with(oGame) {
nextWave += 1;

}


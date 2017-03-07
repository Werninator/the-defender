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
		
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25355A38
			/// @DnDInput : 2
			/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
			/// @DnDParent : 2B6EA86D
			/// @DnDArgument : "var" "grid"
			/// @DnDArgument : "value" "playerGrid"
			/// @DnDArgument : "var_1" "path"
			/// @DnDArgument : "value_1" "enemyPath"
			with(oGrid) {
			var grid = playerGrid;
			var path = enemyPath;
			
			}
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B46E7C5
			/// @DnDInput : 2
			/// @DnDApplyTo : 8767de29-8722-478a-82d7-045bb4a1344b
			/// @DnDParent : 2B6EA86D
			/// @DnDArgument : "var" "goalX"
			/// @DnDArgument : "value" "x div 16 * 16 + 8"
			/// @DnDArgument : "var_1" "goalY"
			/// @DnDArgument : "value_1" "y div 16 * 16 + 8"
			with(oEnemyGoal) {
			var goalX = x div 16 * 16 + 8;
			var goalY = y div 16 * 16 + 8;
			
			}
	
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 010623D4
			/// @DnDInput : 7
			/// @DnDParent : 2B6EA86D
			/// @DnDArgument : "var" "mpGrid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "mp_grid_path"
			/// @DnDArgument : "arg" "grid"
			/// @DnDArgument : "arg_1" "path"
			/// @DnDArgument : "arg_2" "x + 8"
			/// @DnDArgument : "arg_3" "y + 8"
			/// @DnDArgument : "arg_4" "goalX"
			/// @DnDArgument : "arg_5" "goalY"
			/// @DnDArgument : "arg_6" "false"
			var mpGrid = mp_grid_path(grid, path, x + 8, y + 8, goalX, goalY, false);
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 22899E49
			/// @DnDParent : 2B6EA86D
			/// @DnDArgument : "expr" "path"
			if(path)
			{
				
			
						/// @DnDAction : YoYo Games.Instances.Set_Alarm
						/// @DnDVersion : 1
						/// @DnDHash : 31D360BA
						/// @DnDParent : 22899E49
						/// @DnDArgument : "steps" "interval"
						alarm_set(0, interval);
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 08C3D5B2
						/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
						/// @DnDParent : 22899E49
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "nextWave"
						with(oGame) {
						nextWave += 1;
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 19860109
			/// @DnDParent : 2B6EA86D
			else
			{
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 19D0ED76
						/// @DnDParent : 19860109
						/// @DnDArgument : "script" "log"
						/// @DnDArgument : "arg" ""Kein Pfad konnte gefunden werden""
						/// @DnDSaveInfo : "script" "fe7f48e2-4297-4a25-9287-9acde4e5b7f3"
						script_execute(log, "Kein Pfad konnte gefunden werden");
			
			
			}
	
	
	}


}


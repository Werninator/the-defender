/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2CA77BC7
/// @DnDArgument : "var" "enemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "spawn"
/// @DnDArgument : "arg" "oEnemy"
/// @DnDSaveInfo : "script" "e7da7fac-1311-423e-b778-6881c5fb8469"
var enemy = script_execute(spawn, oEnemy);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D7F213F
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
/// @DnDArgument : "var" "grid"
/// @DnDArgument : "value" "playerGrid"
with(oGrid) {
var grid = playerGrid;

}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 039BA35B
/// @DnDApplyTo : enemy
/// @DnDArgument : "var" "enemyPath"
/// @DnDArgument : "value" "path"
with(enemy) {
var enemyPath = path;

}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 22595F82
/// @DnDInput : 2
/// @DnDApplyTo : 8767de29-8722-478a-82d7-045bb4a1344b
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
/// @DnDHash : 2D58C5C2
/// @DnDInput : 7
/// @DnDArgument : "var" "mpGrid"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "mp_grid_path"
/// @DnDArgument : "arg" "grid"
/// @DnDArgument : "arg_1" "enemyPath"
/// @DnDArgument : "arg_2" "x + 8"
/// @DnDArgument : "arg_3" "y + 8"
/// @DnDArgument : "arg_4" "goalX"
/// @DnDArgument : "arg_5" "goalY"
/// @DnDArgument : "arg_6" "false"
var mpGrid = mp_grid_path(grid, enemyPath, x + 8, y + 8, goalX, goalY, false);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 03058D87
/// @DnDArgument : "expr" "mpGrid"
if(mpGrid)
{
	

	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1
	/// @DnDHash : 0019A454
	/// @DnDApplyTo : enemy
	/// @DnDParent : 03058D87
	/// @DnDArgument : "path" "enemyPath"
	/// @DnDArgument : "speed" "movementSpeed"
	with(enemy)
	{
		path_start(enemyPath, movementSpeed, 0, true);
	}


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02E16405
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemyCount[1]"
enemyCount[1] += -1;


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 44931868
/// @DnDArgument : "expr" "enemyCount[1] <= 0"
if(enemyCount[1] <= 0)
{
	

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 22872745
	/// @DnDParent : 44931868
	/// @DnDArgument : "expr" "packs != 0"
	if(packs != 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 71C8E408
			/// @DnDInput : 2
			/// @DnDParent : 22872745
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "enemyCount[0]"
			/// @DnDArgument : "var" "packs"
			/// @DnDArgument : "var_1" "enemyCount[1]"
			packs += -1;
			enemyCount[1] = enemyCount[0];
			
	
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 6E9F7503
			/// @DnDParent : 22872745
			/// @DnDArgument : "steps" "packInterval"
			alarm_set(0, packInterval);
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2344C262
	/// @DnDParent : 44931868
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 6A245140
			/// @DnDParent : 2344C262
			/// @DnDArgument : "code" "ready = true;$(13_10)$(13_10)var everyWaveReady = true;$(13_10)$(13_10)var _number = number;$(13_10)$(13_10)with oWave$(13_10)	if number == _number && !ready$(13_10)		everyWaveReady = false;"
			
			{
				ready = true;
			
			var everyWaveReady = true;
			
			var _number = number;
			
			with oWave
				if number == _number && !ready
					everyWaveReady = false;
			}
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 37ED6662
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 2344C262
			/// @DnDArgument : "expr" "everyWaveReady && alarm[0] < 0"
			with(oGame) var l37ED6662_0 = everyWaveReady && alarm[0] < 0;
			if(l37ED6662_0)
			{
				
			
						/// @DnDAction : YoYo Games.Instances.Set_Alarm
						/// @DnDVersion : 1
						/// @DnDHash : 6887FD1B
						/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
						/// @DnDParent : 37ED6662
						/// @DnDArgument : "steps" "waveInterval * room_speed"
						with(oGame) {
						alarm_set(0, waveInterval * room_speed);
						
						}
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 015F3A03
else
{
	

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0B38A425
	/// @DnDParent : 015F3A03
	/// @DnDArgument : "steps" "interval"
	alarm_set(0, interval);
	


}


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C366BB4
/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
/// @DnDArgument : "var" "path"
/// @DnDArgument : "value" "enemyPath"
with(oGrid) {
var path = enemyPath;

}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2CA77BC7
/// @DnDArgument : "var" "enemy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "spawn"
/// @DnDArgument : "arg" "oEnemy"
/// @DnDSaveInfo : "script" "e7da7fac-1311-423e-b778-6881c5fb8469"
var enemy = script_execute(spawn, oEnemy);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1
/// @DnDHash : 4F146F24
/// @DnDApplyTo : enemy
/// @DnDArgument : "path" "path"
/// @DnDArgument : "speed" "movementSpeed"
with(enemy)
{
	path_start(path, movementSpeed, 0, true);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02E16405
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemyCount"
enemyCount += -1;


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0FBFC2BA
/// @DnDArgument : "expr" "enemyCount == 0"
if(enemyCount == 0)
{
	

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0B38A425
	/// @DnDParent : 0FBFC2BA
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);
	


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1301F468
else
{
	

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 635FD648
	/// @DnDParent : 1301F468
	/// @DnDArgument : "steps" "interval"
	alarm_set(0, interval);
	


}


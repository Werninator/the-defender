/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A446FD9
/// @DnDInput : 2
/// @DnDArgument : "var" "enemyX"
/// @DnDArgument : "value" "undefined"
/// @DnDArgument : "var_1" "enemyY"
/// @DnDArgument : "value_1" "undefined"
var enemyX = undefined;
var enemyY = undefined;


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2288D664
/// @DnDArgument : "expr" "enemy != undefined"
if(enemy != undefined)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FDAD434
	/// @DnDInput : 2
	/// @DnDApplyTo : enemy
	/// @DnDParent : 2288D664
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "enemyX"
	/// @DnDArgument : "var_1" "enemyY"
	with(enemy) {
	enemyX = x;
	enemyY = y;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2913BC40
	/// @DnDParent : 2288D664
	/// @DnDArgument : "expr" "enemyX == undefined || enemyY == undefined"
	if(enemyX == undefined || enemyY == undefined)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1988DD22
			/// @DnDParent : 2913BC40
			instance_destroy();
	
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 26070E97
			/// @DnDParent : 2913BC40
			exit;
	
	
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75251595
	/// @DnDInput : 2
	/// @DnDParent : 2288D664
	/// @DnDArgument : "var" "goalX"
	/// @DnDArgument : "value" "enemyX div 16 * 16"
	/// @DnDArgument : "var_1" "goalY"
	/// @DnDArgument : "value_1" "enemyY div 16 * 16"
	var goalX = enemyX div 16 * 16;
	var goalY = enemyY div 16 * 16;
	

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3EC8EBD6
	/// @DnDInput : 4
	/// @DnDParent : 2288D664
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "function" "point_direction"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "goalX"
	/// @DnDArgument : "arg_3" "goalY"
	direction = point_direction(x, y, goalX, goalY);


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4DE603AB
else
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C606342
	/// @DnDParent : 4DE603AB
	instance_destroy();


}


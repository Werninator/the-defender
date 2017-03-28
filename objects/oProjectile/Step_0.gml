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
		
	
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 26070E97
			/// @DnDParent : 2913BC40
			exit;
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 52D08AF4
	/// @DnDParent : 2288D664
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75251595
			/// @DnDInput : 2
			/// @DnDParent : 52D08AF4
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
			/// @DnDParent : 52D08AF4
			/// @DnDArgument : "var" "direction"
			/// @DnDArgument : "function" "point_direction"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y"
			/// @DnDArgument : "arg_2" "goalX"
			/// @DnDArgument : "arg_3" "goalY"
			direction = point_direction(x, y, goalX, goalY);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4C1A44EF
			/// @DnDParent : 52D08AF4
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "directionHasBeenSet"
			directionHasBeenSet = true;
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59F7AF56
/// @DnDArgument : "expr" "directionHasBeenSet"
/// @DnDArgument : "not" "1"
if(!(directionHasBeenSet))
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76F82939
	/// @DnDParent : 59F7AF56
	instance_destroy();


}


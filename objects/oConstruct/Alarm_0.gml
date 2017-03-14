/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3EBF8477
/// @DnDArgument : "expr" "scriptToCall != undefined"
if(scriptToCall != undefined)
{
	

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4381190A
	/// @DnDParent : 3EBF8477
	/// @DnDArgument : "expr" "argPos"
	if(argPos)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 69C47184
			/// @DnDInput : 2
			/// @DnDParent : 4381190A
			/// @DnDArgument : "script" "scriptToCall"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y"
			script_execute(scriptToCall, x, y);
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6AF8BEBD
	/// @DnDParent : 3EBF8477
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1E871EC6
			/// @DnDParent : 6AF8BEBD
			/// @DnDArgument : "expr" "arg != undefined"
			if(arg != undefined)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 1F28AF05
						/// @DnDParent : 1E871EC6
						/// @DnDArgument : "script" "scriptToCall"
						/// @DnDArgument : "arg" "arg"
						script_execute(scriptToCall, arg);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 037FBB3D
			/// @DnDParent : 6AF8BEBD
			else
			{
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 5217F6FE
						/// @DnDParent : 037FBB3D
						/// @DnDArgument : "script" "scriptToCall"
						script_execute(scriptToCall);
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C8275B7
/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "moveEnabled"
with(oPlayer) {
moveEnabled = true;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D09F3D8
instance_destroy();


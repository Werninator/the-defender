/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BA12129
/// @DnDArgument : "var" "str"
/// @DnDArgument : "value" """"
var str = "";


/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 086338CD
/// @DnDArgument : "cond" "i < argument_count"
/// @DnDArgument : "expr" "i++"
for(i = 0; i < argument_count; i++) {
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24B1A31E
	/// @DnDParent : 086338CD
	/// @DnDArgument : "expr" "string(argument[i])"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "str"
	str += string(argument[i]);
	

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0311E193
	/// @DnDParent : 086338CD
	/// @DnDArgument : "expr" "i != argument_count -1 && string_pos(":", string(argument[i])) == 0"
	if(i != argument_count -1 && string_pos(":", string(argument[i])) == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D64940F
			/// @DnDParent : 0311E193
			/// @DnDArgument : "expr" "", ""
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "str"
			str += ", ";
			
	
	
	}


}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1BF32C24
/// @DnDArgument : "msg" "str"
show_debug_message(string(str));


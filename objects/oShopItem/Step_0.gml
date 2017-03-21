/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 41CB632F
/// @DnDArgument : "expr" "currentType != shopItemType.none"
if(currentType != shopItemType.none)
{
	

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 24CDF5EC
	/// @DnDParent : 41CB632F
	/// @DnDArgument : "expr" "currentType"
	var l24CDF5EC_0;
	l24CDF5EC_0 = currentType;
	switch(l24CDF5EC_0)
	{
		
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 75B6E698
			/// @DnDParent : 24CDF5EC
			/// @DnDArgument : "const" "shopItemType.wood"
			case shopItemType.wood:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 18092B45
						/// @DnDParent : 75B6E698
						/// @DnDArgument : "var" "image_index"
						image_index = 0;
						
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1D14EB84
			/// @DnDParent : 24CDF5EC
			/// @DnDArgument : "const" "shopItemType.stone"
			case shopItemType.stone:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0C46F156
						/// @DnDParent : 1D14EB84
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "image_index"
						image_index = 1;
						
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 33617631
			/// @DnDParent : 24CDF5EC
			/// @DnDArgument : "const" "shopItemType.fabric"
			case shopItemType.fabric:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5072BCA6
						/// @DnDParent : 33617631
						/// @DnDArgument : "expr" "2"
						/// @DnDArgument : "var" "image_index"
						image_index = 2;
						
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 3C818A73
			/// @DnDParent : 24CDF5EC
			default:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0F0B1193
						/// @DnDParent : 3C818A73
						/// @DnDArgument : "expr" "5"
						/// @DnDArgument : "var" "image_index"
						image_index = 5;
						
			
			
				}
				break;
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 131DC2B5
/// @DnDArgument : "expr" "quantity == 0"
if(quantity == 0)
{
	

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03527889
	/// @DnDParent : 131DC2B5
	instance_destroy();


}


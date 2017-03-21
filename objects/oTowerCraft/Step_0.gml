/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 622461CD
/// @DnDArgument : "expr" "currentType != towerCraftType.none"
if(currentType != towerCraftType.none)
{
	

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 28F2028C
	/// @DnDParent : 622461CD
	/// @DnDArgument : "expr" "currentType"
	var l28F2028C_0;
	l28F2028C_0 = currentType;
	switch(l28F2028C_0)
	{
		
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5FF38228
			/// @DnDParent : 28F2028C
			/// @DnDArgument : "const" "towerCraftType.wood"
			case towerCraftType.wood:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1DDC97A9
						/// @DnDParent : 5FF38228
						/// @DnDArgument : "var" "image_index"
						image_index = 0;
						
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0F391178
			/// @DnDParent : 28F2028C
			/// @DnDArgument : "const" "towerCraftType.stone"
			case towerCraftType.stone:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 71D543CE
						/// @DnDParent : 0F391178
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "image_index"
						image_index = 1;
						
			
			
				}
				break;
	
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4F1329F1
			/// @DnDParent : 28F2028C
			/// @DnDArgument : "const" "towerCraftType.fabric"
			case towerCraftType.fabric:
				{
					
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3A565412
						/// @DnDParent : 4F1329F1
						/// @DnDArgument : "expr" "2"
						/// @DnDArgument : "var" "image_index"
						image_index = 2;
						
			
			
				}
				break;
	
	
	}


}


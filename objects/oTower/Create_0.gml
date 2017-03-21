/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 28E6AAA5
/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
/// @DnDArgument : "var" "selected"
/// @DnDArgument : "value" "selectedTowerType"
with(oGame) {
var selected = selectedTowerType;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F00AEBF
/// @DnDArgument : "expr" "selected"
/// @DnDArgument : "var" "image_index"
image_index = selected;


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 53ECC719
/// @DnDArgument : "expr" "selected"
var l53ECC719_0;
l53ECC719_0 = selected;
switch(l53ECC719_0)
{
	

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3FCC3456
	/// @DnDParent : 53ECC719
	case 0:
		{
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D2C341E
			/// @DnDInput : 4
			/// @DnDParent : 3FCC3456
			/// @DnDArgument : "expr" "50"
			/// @DnDArgument : "expr_1" ".5 * room_speed"
			/// @DnDArgument : "expr_2" "3"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "var" "range"
			/// @DnDArgument : "var_1" "cooldown"
			/// @DnDArgument : "var_2" "projectileSpeed"
			/// @DnDArgument : "var_3" "projectileDamage"
			range = 50;
			cooldown = .5 * room_speed;
			projectileSpeed = 3;
			projectileDamage = 1;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39E5B835
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 3FCC3456
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "towerWood"
			with(oGame) {
			towerWood += -1;
			
			}
	
	
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 41710641
	/// @DnDParent : 53ECC719
	/// @DnDArgument : "const" "1"
	case 1:
		{
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6117AC1B
			/// @DnDInput : 4
			/// @DnDParent : 41710641
			/// @DnDArgument : "expr" "50"
			/// @DnDArgument : "expr_1" "1 * room_speed"
			/// @DnDArgument : "expr_2" "3"
			/// @DnDArgument : "expr_3" "5"
			/// @DnDArgument : "var" "range"
			/// @DnDArgument : "var_1" "cooldown"
			/// @DnDArgument : "var_2" "projectileSpeed"
			/// @DnDArgument : "var_3" "projectileDamage"
			range = 50;
			cooldown = 1 * room_speed;
			projectileSpeed = 3;
			projectileDamage = 5;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 483E05DE
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 41710641
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "towerStone"
			with(oGame) {
			towerStone += -1;
			
			}
	
	
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 24D0EF35
	/// @DnDParent : 53ECC719
	/// @DnDArgument : "const" "2"
	case 2:
		{
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4745FCD9
			/// @DnDInput : 4
			/// @DnDParent : 24D0EF35
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_1" ".1 * room_speed"
			/// @DnDArgument : "expr_2" "5"
			/// @DnDArgument : "expr_3" "2"
			/// @DnDArgument : "var" "range"
			/// @DnDArgument : "var_1" "cooldown"
			/// @DnDArgument : "var_2" "projectileSpeed"
			/// @DnDArgument : "var_3" "projectileDamage"
			range = 20;
			cooldown = .1 * room_speed;
			projectileSpeed = 5;
			projectileDamage = 2;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54D78391
			/// @DnDApplyTo : 449d8e79-918c-41ba-b5c8-f5a116d413cd
			/// @DnDParent : 24D0EF35
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "towerFabric"
			with(oGame) {
			towerFabric += -1;
			
			}
	
	
		}
		break;


}


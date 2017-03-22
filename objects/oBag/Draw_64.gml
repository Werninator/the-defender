/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 592585D6
/// @DnDArgument : "expr" "room != rIntro"
if(room != rIntro)
{
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D63C451
	/// @DnDInput : 3
	/// @DnDParent : 592585D6
	/// @DnDArgument : "var" "_y"
	/// @DnDArgument : "value" "global.camH * 2"
	/// @DnDArgument : "var_1" "mX"
	/// @DnDArgument : "value_1" "mouse_x % global.camW"
	/// @DnDArgument : "var_2" "mY"
	/// @DnDArgument : "value_2" "mouse_y % global.camH"
	var _y = global.camH * 2;
	var mX = mouse_x % global.camW;
	var mY = mouse_y % global.camH;
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 213F3E28
	/// @DnDParent : 592585D6
	/// @DnDArgument : "var" "isHovering"
	/// @DnDArgument : "value" "mX >= 5 && mX <= 21 && mY >= global.camH - 21 && mY <= global.camH - 5"
	var isHovering = mX >= 5 && mX <= 21 && mY >= global.camH - 21 && mY <= global.camH - 5;
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1B900E46
	/// @DnDParent : 592585D6
	/// @DnDArgument : "x" "10 - (isHovering ? 1 : 0)"
	/// @DnDArgument : "y" "_y - 42 + (isHovering ? 1 : 0)"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "sprite" "sBag"
	/// @DnDSaveInfo : "sprite" "f46fe498-c7f1-485e-b918-55c05f462b55"
	
	var l1B900E46_0 = 10 - (isHovering ? 1 : 0);
	var l1B900E46_1 = _y - 42 + (isHovering ? 1 : 0);
	var l1B900E46_2 = 2;
	var l1B900E46_3 = 2;
	var l1B900E46_4 = 0;
	var l1B900E46_5 = $FFFFFFFF & $ffffff;
	var l1B900E46_6 = ($FFFFFFFF >> 24) / $ff;
	draw_sprite_ext(sBag, 0, l1B900E46_0, l1B900E46_1, l1B900E46_2, l1B900E46_3, l1B900E46_4, l1B900E46_5, l1B900E46_6);
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 713DE787
	/// @DnDApplyTo : 0802be38-641c-431d-afca-2c25add97646
	/// @DnDParent : 592585D6
	/// @DnDArgument : "var" "inCastle"
	/// @DnDArgument : "value" "place_meeting(x, y, oCastleArea)"
	with(oPlayer) {
	var inCastle = place_meeting(x, y, oCastleArea);
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1DD2CF7F
	/// @DnDParent : 592585D6
	/// @DnDArgument : "expr" "isHovering || inCastle"
	if(isHovering || inCastle)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 468132FC
			/// @DnDInput : 2
			/// @DnDParent : 1DD2CF7F
			/// @DnDArgument : "script" "draw_resources"
			/// @DnDArgument : "arg" "42"
			/// @DnDArgument : "arg_1" "_y - 42"
			/// @DnDSaveInfo : "script" "42234fd8-eaae-474a-a1b7-73945e37d5c8"
			script_execute(draw_resources, 42, _y - 42);
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 611BDF06
	/// @DnDApplyTo : dd9f6de4-d61e-4626-927b-78b7d10e21ad
	/// @DnDParent : 592585D6
	/// @DnDArgument : "expr" "showGrid || inCastle"
	with(oGrid) var l611BDF06_0 = showGrid || inCastle;
	if(l611BDF06_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2785F782
			/// @DnDParent : 611BDF06
			/// @DnDArgument : "script" "draw_tower_gui"
			/// @DnDSaveInfo : "script" "7d185cf0-3039-474c-94f1-5dfc5075a059"
			script_execute(draw_tower_gui);
	
	
	}


}


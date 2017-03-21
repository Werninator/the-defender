/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2318471F

{
	draw_self();
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2B2E6042
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "0"
draw_set_colour($FF000000 & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 63044B5B
/// @DnDArgument : "font" "font_mini"
/// @DnDSaveInfo : "font" "99156c84-a5e5-45a3-b419-80cb94925ad3"

{
	draw_set_font(font_mini);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2304E7B6
/// @DnDArgument : "x" "8 - string_width(string(cost)) / 2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "cost"

{
	var l2304E7B6_0 = x + 8 - string_width(string(cost)) / 2;
	var l2304E7B6_1 = y + 16;
	draw_text(l2304E7B6_0, l2304E7B6_1,  + string(cost));
}


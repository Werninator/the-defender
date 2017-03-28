if alarm[0] == -1 {

	// Interaction cooldown
	alarm[0] = 0.1 * room_speed;

	var box = instance_create_layer(x div 16 * 16 + 8, y div 16 * 16 + 8, "Instances", oFloatBox);

	with other {

		var _cost = cost;

		switch currentType {

			case towerCraftType.wood:
				with oGame var _wood = wood;

				if _wood >= cost
					with oGame {
						wood -= _cost;
						towerWood++;
						box.text = "-" + string(_cost) + " WOOD (" + string(oGame.wood) + ")";
						exit;
					}

				break;
			
			case towerCraftType.stone:
				with oGame var _stone = stone;

				if _stone >= cost
					with oGame {
						stone -= _cost;
						towerStone++;
						box.text = "-" + string(_cost) + " STONE (" + string(oGame.stone) + ")";
						exit;
					}

				break;

			case towerCraftType.fabric:
				with oGame var _fabric = fabric;

				if _fabric >= cost
					with oGame {
						fabric -= _cost;
						towerFabric++;
						box.text = "-" + string(_cost) + " MONSTER (" + string(oGame.fabric) + ")";
						exit;
					}

				break;

		}

	}
	
	box.text = "NOT ENOUGH MATERIALS";

}
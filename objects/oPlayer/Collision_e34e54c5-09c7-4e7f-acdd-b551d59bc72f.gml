if alarm[0] == -1 {

	// Interaction cooldown
	alarm[0] = 0.1 * room_speed;

	var box = instance_create_layer(x div 16 * 16 + 8, y div 16 * 16 + 8, "Instances", oFloatBox);

	with other {

		var _cost = cost;
		var amount = 0;

		switch currentType {

			case towerCraftType.wood:
				with oGame var _wood = wood;

				if _wood >= cost
					with oGame {
						amount = wood div _cost;
						wood -= _cost * amount;
						towerWood += amount;
						box.text = "-" + string(amount) + " WOOD (" + string(oGame.wood) + ")";
						exit;
					}

				break;
			
			case towerCraftType.stone:
				with oGame var _stone = stone;

				if _stone >= cost
					with oGame {
						amount = stone div _cost;
						stone -= _cost * amount;
						towerStone += amount;
						box.text = "-" + string(amount) + " STONE (" + string(oGame.stone) + ")";
						exit;
					}

				break;

			case towerCraftType.fabric:
				with oGame var _fabric = fabric;

				if _fabric >= cost
					with oGame {
						amount = fabric div _cost;
						fabric -= _cost * amount;
						towerFabric += amount;
						box.text = "-" + string(amount) + " MONSTER (" + string(oGame.fabric) + ")";
						exit;
					}

				break;

		}

	}
	
	box.text = "NOT ENOUGH MATERIALS";

}
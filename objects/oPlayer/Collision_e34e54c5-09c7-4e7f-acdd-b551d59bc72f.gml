if alarm[0] == -1 {

	// Interaction cooldown
	alarm[0] = 0.1 * room_speed;

	with other {

		var _cost = cost;

		switch currentType {

			case towerCraftType.wood:
				with oGame var _wood = wood;

				if _wood >= cost
					with oGame {
						wood -= _cost;
						towerWood++;
					}

				break;
			
			case towerCraftType.stone:
				with oGame var _stone = stone;

				if _stone >= cost
					with oGame {
						stone -= _cost;
						towerStone++;
					}

				break;

			case towerCraftType.fabric:
				with oGame var _fabric = fabric;

				if _fabric >= cost
					with oGame {
						fabric -= _cost;
						towerFabric++;
					}

				break;

		}

	}

}
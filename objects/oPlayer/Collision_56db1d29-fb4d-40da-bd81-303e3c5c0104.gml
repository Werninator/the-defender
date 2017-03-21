if alarm[0] == -1 {

	// Interaction cooldown
	alarm[0] = 0.1 * room_speed;
	
	with other {

		quantity--;

		// 2Do: Geld

		switch currentType {

			case shopItemType.wood:
				with oGame wood++;
				break;
			
			case shopItemType.stone:
				with oGame stone++;
				break;

			case shopItemType.fabric:
				with oGame fabric++;
				break;

		}

	}

}
with oGame {
	switch selectedTowerType {
		case 0: return towerWood >= 1;
		case 1: return towerStone >= 1;
		case 2: return towerFabric >= 1;
		default: return false;
	}
}

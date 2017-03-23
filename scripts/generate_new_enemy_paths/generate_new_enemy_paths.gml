with oEnemyGoal {
	var goalX = x div 16 * 16 + 8;
	var goalY = y div 16 * 16 + 8;
}

with oGrid {
	var grid = playerGrid;
}

with oEnemy {
	var pathCreatedSuccessfully = mp_grid_path(
		grid,
		path,
		x,
		y,
		goalX div 16 * 16 + 8,
		goalY div 16 * 16 + 8,
		false
	);
	
	if pathCreatedSuccessfully
		path_start(path, movementSpeed, path_action_stop, true);
}
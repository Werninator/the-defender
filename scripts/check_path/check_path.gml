with oGrid
	var grid = playerGrid;

with oEnemyGoal {

	var xGoal = x div 16 * 16 + 8;
	var yGoal = y div 16 * 16 + 8;

}

with oWave {

	var path = path_add();

	var xStart = x div 16 * 16 + 8;
	var yStart = y div 16 * 16 + 8;

	var hasPath = mp_grid_path(grid, path, xStart, yStart, xGoal, yGoal, false);

	path_delete(path);

	if !hasPath
		return false;

}

return true;
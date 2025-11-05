// This function checks if the instance is colliding
// with an object, or a tile, at the current
// position + the given movement values (_move_x and
// _move_y).
// The function returns true if a collision was found,
// or false if a collision was not found.
function check_collision(_move_x, _move_y) {	// This checks for an object collision
	// at the new position, where the instance
	// is going to move
	// We get the new position by using relative
	// coordinates and specifying _move_x and _move_y
	// as the relative X and Y values, which are 
	// added onto the instance's X and Y values
	var l5D529D74_0 = instance_place(x + _move_x, y + _move_y, [obj_collision]);if ((l5D529D74_0 > 0)){	// If there was an object collision,
		// return true, and end the function
		return true;}

	// The function continues if there were no object
	// collisions. In this case we check for tile
	// collisions, at each corner of the instance's
	// bounding box.
	// This checks for tile collision at the top-left corner
	// of the instance's mask
	var l118575A2_0 = layer_tilemap_get_id("CollisionTiles");var left_top = undefined;if(l118575A2_0 > -1) {	var l118575A2_1 = tilemap_get_at_pixel(l118575A2_0, bbox_left + _move_x, bbox_top + _move_y);	if(l118575A2_1 > -1) left_top = tile_get_index(l118575A2_1);}

	// This checks for tile collision at the top-right corner
	// of the instance's mask
	var l124372BE_0 = layer_tilemap_get_id("CollisionTiles");var right_top = undefined;if(l124372BE_0 > -1) {	var l124372BE_1 = tilemap_get_at_pixel(l124372BE_0, bbox_right + _move_x, bbox_top + _move_y);	if(l124372BE_1 > -1) right_top = tile_get_index(l124372BE_1);}

	// This checks for tile collision at the bottom-right corner
	// of the instance's mask
	var l43C28678_0 = layer_tilemap_get_id("CollisionTiles");var right_bottom = undefined;if(l43C28678_0 > -1) {	var l43C28678_1 = tilemap_get_at_pixel(l43C28678_0, bbox_right + _move_x, bbox_bottom + _move_y);	if(l43C28678_1 > -1) right_bottom = tile_get_index(l43C28678_1);}

	// This checks for tile collision at the bottom-left corner
	// of the instance's mask
	var l648FA000_0 = layer_tilemap_get_id("CollisionTiles");var left_bottom = undefined;if(l648FA000_0 > -1) {	var l648FA000_1 = tilemap_get_at_pixel(l648FA000_0, bbox_left + _move_x, bbox_bottom + _move_y);	if(l648FA000_1 > -1) left_bottom = tile_get_index(l648FA000_1);}

	// The results of the above four actions were stored in temporary
	// variables. If any of those variables were true, meaning a tile
	// collision was found at any given corner, we return true and end
	// the function.
	if(left_top or right_top or right_bottom or left_bottom){	return true;}

	// If no tile collisions were found, the function continues.
	// In that case we return false, to indicate that no collisions
	// were found, and the instance is free to move to the new position.
	return false;}
def alignXYTuple(tuple):
	
	x, y = tuple
	dx = get_pos_x() - x
	dy = get_pos_y() - y
	ws = get_world_size()
	rad = ws / 2
	
	#toroidal shortest dist x
	if (abs(dx) > rad):
		if dx > 0:
			torodx = ws - dx
			for i in range(torodx):
				move(East)
		else:
			torodx = ws + dx
			for i in range(torodx):
				move(West)
	else:
		if dx > 0:
			for i in range(dx):
				move(West)
		else:
			for i in range(abs(dx)):
				move(East)
				
				
	#toroidal shortest dist y
	if (abs(dy) > rad):
		if dy > 0:
			torody = ws - dy
			for i in range(torody):
				move(North)
		else:
			torody = ws + dy
			for i in range(torody):
				move(South)
	else:
		if dy > 0:
			for i in range(dy):
				move(South)
		else:
			for i in range(abs(dy)):
				move(North)

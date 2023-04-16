var _inst = instance_nearest(x, y, obj_wall)

if (
	x > (_inst.x - _inst.width )	&&
	x < (_inst.x + _inst.width )	&& 
	y > (_inst.y - _inst.height)	&& 
	y < (_inst.y + _inst.height)
   )
	hspeed *= -random_range(0.75, 1.25);

# move sprite over Path2D, tweening the progress_ratio property

func get_progress_at_point(point_coords:Vector2) -> float:
	
	var baked_points = curve.get_baked_points()
	
	var baked_length = 0.0
	var point_index = baked_points.find(point_coords)
	
	if point_index == -1:
		return float(-1)
	
	for i in range(0, point_index):
		
		var p2 = baked_points[i+1]
		var p1 = baked_points[i]
		
		# sqrt[(x2-x1)^2+(y2-y1)^2]
		var d = sqrt(pow(p2[0] - p1[0], 2) + pow(p2[1] - p1[1], 2))
		baked_length += d
	
	return baked_length
  
 # usage
 
# vector should not be hardcoded, anyway
var point_coords = Vector2(883.436, 568)
var dist = get_progress_at_point(point_coords)
# test for -1.0 before using
var baked_length = curve.get_baked_length()
var ratio = dist/baked_length

var tween = get_tree().create_tween()
tween.tween_property($"../Path2D/PathFollow2D", "progress_ratio", ratio, 2.0)

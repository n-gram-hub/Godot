# generates unique numbers withing a range

func generate_unique_numbers(total_numbers:int, start:int, end:int)->Array:
	
	if total_numbers > end-start or end <= start:
		return []
	
	var t = []
	
	while t.size() < total_numbers:
		
		var r = randi_range(start, end)
	
		if t.find(r) == -1:
			t.append(r)
			
	return t

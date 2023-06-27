#@tool

# Health scene

extends Node
class_name Health_cmp

signal health_changed

#var maximum_health:float = 100.0

var health = 0 : set = _set_health, get = _get_health

func _set_health(h):
	if h != _get_health():
		health = h
		health_changed.emit()
	
func _get_health():
	return health

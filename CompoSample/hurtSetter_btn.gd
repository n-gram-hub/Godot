extends Button

# brutally called from here
func _on_pressed():
	$"../Hurt_cmp".on_hurt()

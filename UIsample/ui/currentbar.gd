extends TextureProgress
var cur = 1
var m = 55

func _on_hp_current_changed(current):
	cur = current
	
func _on_hp_maximum_changed(maximum):
	m = maximum

func _process(delta):
	value = cur
	max_value = m
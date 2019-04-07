extends Label

var cur = 1
var m = 50
	
func _on_hp_current_changed(current):
	cur = current
func _on_hp_maximum_changed(maximum):
	m = maximum

func _process(delta):
	
	set_text("R: " + str(cur)+"/"+str(m))
extends TextureProgress

var cur = 1
var m = 50

func _process(delta):
	value = cur
	max_value = m

func _on_Interface_en_max(maximum):
	m = maximum

func _on_Interface_en_updated(val):
	cur = val

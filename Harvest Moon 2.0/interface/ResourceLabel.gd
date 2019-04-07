extends Label

var cur = 1
var m = 50

func _process(delta):	
	set_text("EN: " + str(cur)+"/"+str(m))


func _on_Interface_en_max(maximum):
	m = maximum

func _on_Interface_en_updated(val):
	cur = val
	print("resourcelabel update")

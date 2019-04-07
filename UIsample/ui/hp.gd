extends VBoxContainer

signal maximum_changed(maximum)
signal current_changed(current)

var maximum = 0
var hp = 0

func initialize(max_value):
	pass

func _on_Interface_hp_updated(current):
	emit_signal("current_changed", current)

func _on_Interface_hp_max(maximum):
	emit_signal("maximum_changed", maximum)

extends Control

signal hp_updated(value)
signal hp_max(maximum)
signal set_time_m(timem)
signal set_time_s(times)

var hp = 0
var m_hp = 0
var m = 0
var s = 0

func _ready() :
	hp = 20
	m_hp = 40
	m = 1
	s = 1
	emit_signal("hp_updated", hp)
	emit_signal("hp_max", m_hp)
	emit_signal("set_time_m", m)
	emit_signal("set_time_s", s)

func set_hp_current(new_hp_current) :
	hp = new_hp_current
	emit_signal("hp_updated", hp)
	
func set_hp_max(new_hp_max) :
	m_hp = new_hp_max
	emit_signal("hp_max", m_hp)
	
func set_time_m(new_m) :
	m = new_m
	emit_signal("set_time_m", m)
	
func set_time_s(new_s) :
	s = new_s
	emit_signal("set_time_s", s)
	
func subtract_hp() :
	hp = hp - 1 
	emit_signal("hp_updated", hp)

func _on_Button_pressed():
	hp = hp - 1 
	emit_signal("hp_updated", hp)

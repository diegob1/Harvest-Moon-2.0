extends Control

signal en_updated(value)
signal en_max(maximum)
signal set_time_m(timem)
signal set_time_s(times)

var en = 0
var m_en = 0
var m = 0
var s = 0

func _ready() :
	en = 20
	m_en = 40
	m = 1
	s = 1
	set_en_current(en)
	set_en_max(m_en)
	set_time_m(m)
	set_time_s(s)

func set_en_current(new_en_current) :
	en = new_en_current
	emit_signal("en_updated", en)
	
func set_en_max(new_en_max) :
	m_en = new_en_max
	emit_signal("en_max", m_en)
	
func set_time_m(new_m) :
	m = new_m
	emit_signal("set_time_m", m)
	
func set_time_s(new_s) :
	s = new_s
	emit_signal("set_time_s", s)
	
func subtract_en() :
	print("subtract works?")
	en = en - 1 
	emit_signal("en_updated", en)
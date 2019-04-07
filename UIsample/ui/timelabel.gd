extends Label

var m = 0
var s = 0


func _process(delta):
	if s > 3 :
		m += 1
		s = 0
		
	if m > 3 :
		m = 0
		s = 0
		
	set_text("timer (reset on 4s): " + str(m)+":"+str(s))

func _on_Timer_timeout():
	s += 1

func _on_Interface_set_time_m(timem):
	m = timem

func _on_Interface_set_time_s(times):
	s = times

extends Label

var m = 0
var s = 0
var d = 1

func _process(delta):
	if s > 10 :
		m += 1
		s = 0
		
	if m > 4 :
		m = 0
		s = 0
		d +=1
	
	set_text("Day: " + str(d) + "  " + str(m)+":"+str(s))

func _on_Timer_timeout():
	s += 1

func _on_Interface_set_time_m(timem):
	m = timem

func _on_Interface_set_time_s(times):
	s = times

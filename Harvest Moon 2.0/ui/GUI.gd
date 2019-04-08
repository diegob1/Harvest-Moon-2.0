extends MarginContainer

var time = 0 # time 
var time_start = 0 # set initial date and time
var time_speed = 1
export (int) var paddingLength = 2
onready var path = get_node("HBoxContainer/Bars/HBoxContainer/Count/Number")
var timeString = ""
var seasonString = "Spring"

func _ready():
	time = time_start
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	time+=time_speed*delta
	convert_time()
	path.text = ("%*s" % [paddingLength, timeString])
	pass
	
func convert_time():
	var int_time = int(floor(time))#time being decimal, so type casting to int
	var second = int_time%60
	var minute = (int_time/60)%24#time/60%60
	#var hour = (int_time/(60*60))%24#time/(60*60)%24
	var day = (int_time/(60*24))%31+1
	var season = (int_time/(60*24*31))%4
	
	if season == 0:
		seasonString = "Spring"
	elif season == 1:
		seasonString = "Summer"
	elif season ==2:
		seasonString = "Fall"
	else:
		seasonString = "Winter"
	timeString = (" %s %0*d \n  %0*d:%0*d"%[seasonString, paddingLength, day,paddingLength, minute,paddingLength, second])
	pass
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

extends Area2D

var drection = Vector2(5,5)
var speed = 1
var init_position
signal dead_signal
# Called when the node enters the scene tree for the first time.
func _ready():
	# print(Global.speed)
	self.add_to_group("Ball")
	 # position = drection;
	init_position = position
	pass # Replace with function body.

func reset():
	position = init_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position + speed * drection
	#print(position)
	#if position.x > 1250:
		#reset()
	pass
	

func _on_area_entered(area):
	if area.name == "wall1":
		get_node("dead").play()
		Global.score2 += 1
		emit_signal("dead_signal")
	if area.name == "wall2":
		get_node("dead").play()
		Global.score1 += 1
		emit_signal("dead_signal")

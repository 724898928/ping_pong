extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			self.get_node("best").play()
			i.drection.x = -5
	var y1 = Input.get_action_strength("player2_up")*5
	var y2 = Input.get_action_strength("player2_down")*5
	var y3 = position.y - y1 + y2
	if y3 > 40 && y3 < 610:
		position.y = y3	

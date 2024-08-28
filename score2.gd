extends Label
func _ready():
	pass

func _process(delta):
	text = "score: "+String.num_int64(Global.score2)

extends Node2D
var music 
# Called when the node enters the scene tree for the first time.
@export var playing = false 
func _ready():
	$ball.connect("dead_signal",_on_dead_signal)
	$scores.get_node("button").connect("pressed",_on_button_pressed)
	music = self.get_node("backAudeo")
	music.play()
	playing = false
	get_tree().paused = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_dead_signal():
	print("死啦死啦!")
	playing = false
	$scores.get_node("button").visible = true
	music.stop()
	$ball.reset()
	get_tree().paused = true
	pass

func _on_button_pressed():
	print("开始啦!")
	if playing:
		$scores.get_node("button").visible = true
		playing = false
		get_tree().paused = true
	else:
		music.play()
		playing = true
		get_tree().paused = false
		$scores.get_node("button").visible = false
	pass

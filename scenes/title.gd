extends Control

func _ready() -> void:
	if Global.won:
		$BestTime.text = "Best Time: %s seconds" % Global.game_timer
	else:
		$BestTime.text = "You got ran over by a car :("
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("confirm"):
		get_tree().change_scene_to_file("res://scenes/game.tscn")
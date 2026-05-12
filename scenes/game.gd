extends Node2D

var car_scene: PackedScene = preload("car.tscn")
var game_timer := 0

func _on_win_area_body_entered(body: Node2D) -> void:
	if body == $Objects/Player:
		print("Player has entered the area")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPositions.get_children().pick_random()
	car.position = pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title)

func go_to_title(_body):
	print("player crashed with a car")

func _game_timer_second() -> void:
	game_timer += 1
	$UI/CanvasLayer/TimePassed.text = "Time Passed: %s seconds" % game_timer
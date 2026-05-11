extends Node2D

var car_scene: PackedScene = preload("car.tscn")

func _on_win_area_body_entered(body: Node2D) -> void:
	if body == $Player:
		print("Player has entered the area")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate()
	$Objects.add_child(car)
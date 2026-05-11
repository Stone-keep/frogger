extends Area2D


var direction := Vector2.RIGHT
var speed = 0.8

func _process(_delta: float) -> void:
	position += direction * speed

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
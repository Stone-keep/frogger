extends Area2D


var direction := Vector2.LEFT
var speed = 75

func _process(delta: float) -> void:
	position += direction * speed * delta

func _ready() -> void:
	if position.x < 0:
		direction = Vector2.RIGHT
		$Green.flip_h = true
	else:
		direction = Vector2.LEFT

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

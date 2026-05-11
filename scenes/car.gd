extends Area2D


var direction := Vector2.LEFT
var speed := 75
var colors := [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/red.png"),
	preload("res://graphics/cars/yellow.png")
	]

func _process(delta: float) -> void:
	position += direction * speed * delta

func _ready() -> void:
	$CarSprite.texture = colors.pick_random()
	if position.x < 0:
		direction = Vector2.RIGHT
		$CarSprite.flip_h = true
	else:
		direction = Vector2.LEFT

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

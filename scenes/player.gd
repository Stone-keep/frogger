extends CharacterBody2D


var direction := Vector2.ZERO
var speed := 5000

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed * delta
	move_and_slide()
	walking_animation()
	if Input.is_action_just_pressed("confirm"):
		print("something")

func walking_animation():
	if direction.x:
		$PlayerSprite.play("walk_left_right")
		$PlayerSprite.flip_h = direction.x > 0
	elif direction.y:
		if direction.y > 0:
			$PlayerSprite.play("walk_down")
		if direction.y < 0:
			$PlayerSprite.play("walk_up")
	else:
		$PlayerSprite.stop()
		$PlayerSprite.frame = 0
extends CharacterBody2D

var speed = 350

func _process(delta):
	
	if !is_on_floor():
		velocity.y += 10
		

	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		velocity.y -= 300
	
	
	# animação 
	
	if velocity.y != 0:
		$AnimatedSprite2D.play("correr")
	else:
		$AnimatedSprite2D.play("parado")
		
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	
	
	
	move_and_slide()
	
	
	pass
	

		

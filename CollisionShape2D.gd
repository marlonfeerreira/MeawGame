extends CollisionShape2D2D

func _on_espinho_body_entered(body):
	if body.name == "player":
		get_tree().reload_current_scene()
	pass # Replace with function body.

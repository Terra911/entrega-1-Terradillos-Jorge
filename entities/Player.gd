extends Sprite

export (float) var speed:float = 500 

func _process(delta):

	var direction:Vector2 = Vector2(
		int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left")),
		int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	)
	
	position +=direction*delta*speed


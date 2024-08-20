extends Camera3D

@export var speed: float = 2.0;

func _process(delta: float) -> void:
	
	var direction: Vector3 = Vector3.ZERO;
	if Input.is_action_pressed("right"):
		direction.z -= 1
	if Input.is_action_pressed("left"):
		direction.z += 1
	if Input.is_action_pressed("down"):
		direction.x += 1
	if Input.is_action_pressed("up"):
		direction.x -= 1
	direction = direction.normalized();
	position += direction * delta * speed;

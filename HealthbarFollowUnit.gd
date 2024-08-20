extends MeshInstance3D

@export var healthbar: Healthbar;
@export var offset_x: float = -100.0;
@export var height: float = 0.25;

func _ready():
	assert(healthbar != null);

func _process(delta: float) -> void:
	healthbar.position = get_viewport().get_camera_3d().unproject_position(position + Vector3(0, height, 0)) + Vector2(offset_x, 0.0);

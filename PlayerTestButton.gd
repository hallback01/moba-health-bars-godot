extends Button

@export var health: SpinBox;
@export var max_health: SpinBox;
@export var healthbar: Healthbar;

func _ready():
	assert(health != null);
	assert(max_health != null);
	assert(healthbar != null);

func _on_pressed():
	
	var hp: float = health.value;
	var mhp: float = max_health.value;
	if(hp > mhp):
		hp = mhp;
	
	healthbar.set_health(hp);
	healthbar.set_max_health(mhp);

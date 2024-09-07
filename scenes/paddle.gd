extends Area2D

@export var speed: float = 90.0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if Input.is_action_pressed("left"): 
		position.x += -speed * delta
		
	if Input.is_action_pressed("right"): 
		position.x += speed * delta		

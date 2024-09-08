extends Area2D

@export var speed: float = 200.0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	#Paddle Movement
	#First Option
	if Input.is_action_pressed("left"): 
		position.x += -speed * delta
		
	elif Input.is_action_pressed("right"): 
		position.x += speed * delta		
	#Second Option
	#var input_amount: float = Input.get_axis("left", "right")
	#position.x += delta * speed * input_amount
	#Third Option - preferred but will stick with original code
	#position.x += delta * speed * Input.get_axis("left", "right")


func _on_gem_area_entered(area: Area2D) -> void:
	print(area)

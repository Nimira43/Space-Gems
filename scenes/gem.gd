extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 100.0 * delta	
	if position.y > get_viewport_rect().size.y:
		set_process(false)
		queue_free()

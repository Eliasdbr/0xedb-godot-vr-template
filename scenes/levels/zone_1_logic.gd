extends Node

func _ready() -> void:
	pass

# Push button, do something
func _on_push_button_button_released(button: Variant) -> void:
	pass


func _on_push_button_button_pressed(button: Variant) -> void:
	$"../ConfettiParticles".restart()

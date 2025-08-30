extends Node3D

#func _init() -> void:
	#preload("res://resources/particles/particle_procces_material_confetti.tres")
	#preload("res://resources/particles/particle_material_confetti.tres")
	#preload("res://resources/particles/particle_mesh_confetti.tres")

func _ready() -> void:
	pass

# Push button, do something
func _on_push_button_button_released(button: Variant) -> void:
	#$"../GPUParticles3D".emitting = false
	pass


func _on_push_button_button_pressed(button: Variant) -> void:
	#$"../GPUParticles3D".restart()
	$"../CPUParticles3D".restart()

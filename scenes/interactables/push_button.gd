extends Node3D

@export var sound_pressed: AudioStream = preload("res://resources/sounds/button/click_down.ogg")
@export var sound_released: AudioStream = preload("res://resources/sounds/button/click_up.ogg")
@export var cooldown: float = 1.0

signal button_pressed(button: Variant)
signal button_released(button: Variant)

func _ready() -> void:
	$Cooldown.wait_time = cooldown

func _on_interactable_area_button_button_pressed(button: Variant) -> void:
	$AudioStreamPlayer3D.stream = sound_pressed
	$AudioStreamPlayer3D.play()
	if $Cooldown.time_left <= 0:
		$Cooldown.start()
		button_pressed.emit(button)


func _on_interactable_area_button_button_released(button: Variant) -> void:
	$AudioStreamPlayer3D.stream = sound_released
	$AudioStreamPlayer3D.play()
	button_released.emit(button)

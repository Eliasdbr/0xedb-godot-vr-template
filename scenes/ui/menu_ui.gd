extends CanvasLayer

func _on_button_up() -> void:
	# Find the XRToolsSceneBase ancestor of the current node
	var scene_base : XRToolsSceneBase = XRTools.find_xr_ancestor(self, "*", "XRToolsSceneBase")
	if not scene_base:
		return

	# Request loading the next scene
	scene_base.load_scene("res://scenes/levels/zone_1.tscn")


func _on_button_quit_button_up() -> void:
	get_tree().quit()

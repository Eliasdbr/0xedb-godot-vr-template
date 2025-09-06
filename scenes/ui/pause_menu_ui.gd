extends CanvasLayer


func _on_button_resume_button_up() -> void:
	pass # Replace with function body.


func _on_button_main_menu_button_up() -> void:
	# Find the XRToolsSceneBase ancestor of the current node
	var scene_base : XRToolsSceneBase = XRTools.find_xr_ancestor(self, "*", "XRToolsSceneBase")
	if not scene_base:
		return

	# Request loading the next scene
	scene_base.load_scene("res://scenes/levels/menu/menu.tscn")

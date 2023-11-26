@tool
extends EditorPlugin

const editorAddon = preload("res://plugins/plugin_area.tscn")

var dockedScene

func _enter_tree():
	dockedScene = editorAddon.instantiate()
	add_control_to_dock(DOCK_SLOT_LEFT_UR, dockedScene)


func _exit_tree():
	remove_control_from_docks(dockedScene)
	dockedScene.free()

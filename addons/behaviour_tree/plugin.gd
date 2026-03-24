@tool
extends EditorPlugin

const AUTOLOAD_NAME = "NodeStatus"
const AUTOLOAD_PATH = "res://addons/behaviour_tree/autoload/NodeStatus.gd"

func _enter_tree():
	add_autoload_singleton(AUTOLOAD_NAME, AUTOLOAD_PATH)

func _exit_tree():
	remove_autoload_singleton(AUTOLOAD_NAME)

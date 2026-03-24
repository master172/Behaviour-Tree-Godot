extends Node
class_name BehaviourTree

@export var root_node:TreeNode

func _ready() -> void:
	if root_node:
		return
	root_node = get_child(0) if get_child_count() > 0 else null

func _physics_process(delta: float) -> void:
	if root_node:
		root_node._tick()

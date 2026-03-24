@abstract extends Node
class_name TreeNode

var _child_nodes:Array[TreeNode] = []

@abstract func _tick()->NodeStatus.status

func _ready() -> void:
	_form_child_list_array()


func _form_child_list_array()->void:
	for i:Node in get_children():
		if i is TreeNode:
			_child_nodes.append(i)

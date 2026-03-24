@abstract extends TreeNode
class_name DecoratorNode

var decorating_node:TreeNode

func _ready() -> void:
	decorating_node = get_child(0) if get_child_count() > 0 else null
	if decorating_node == null:
		push_error("Decorator node has no children")
	ready()

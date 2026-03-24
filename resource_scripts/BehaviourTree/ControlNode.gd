@abstract extends TreeNode
class_name ControlNode

var current_node_number:int
var current_node:TreeNode
var child_nodes_length:int

func ready()->void:
	child_nodes_length = _child_nodes.size()
	current_node = _child_nodes[0]
	current_node_number = 0
	
func _tick()->NodeStatus.status:
	return NodeStatus.status.FALIURE

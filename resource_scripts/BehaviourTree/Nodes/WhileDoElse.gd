extends ControlNode
class_name WhileDoElse

var third_child_present:bool = false
var ran_else:bool = false

func ready()->void:
	var child_list_size:int = _child_nodes.size()
	if child_list_size < 2:
		push_error("If then Else must be provided with a minimum of two child nodes")
	if child_list_size == 3:
		third_child_present = true

#replace with your implementation
func _tick()->NodeStatus:
	var condition:NodeStatus = _child_nodes[0]._tick()
	if condition.get_node_status() == 0:
		ran_else = false
		var result:NodeStatus = _child_nodes[1]._tick()
		if result.get_node_status() == 1:
			ran_else = false
			return NodeStatus.new(1)
		return NodeStatus.new(2)
	else:
		if third_child_present and not ran_else:
			ran_else = true
			return _child_nodes[2]._tick()
		ran_else = false
		return NodeStatus.new(1)

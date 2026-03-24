extends ControlNode
class_name SequenceNode

func _tick()->NodeStatus:
	if current_node_number >= child_nodes_length:
		current_node_number = 0
		return NodeStatus.new(0) ##Return Success if all child nodes succeed
	
	current_node = _child_nodes[current_node_number]
	var result:NodeStatus = current_node._tick()
	
	if result.get_node_status() == 0:
		current_node_number += 1
		
	elif result.get_node_status() == 1:
		current_node_number = 0
		return NodeStatus.new(1) ##Return Failiure if any node fail
		
	return NodeStatus.new(2) ##Return Running by default

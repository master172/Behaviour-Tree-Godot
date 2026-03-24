extends ControlNode
class_name SequenceNode

func _tick()->NodeStatus.status:
	if current_node_number >= child_nodes_length:
		current_node_number = 0
		return NodeStatus.status.SUCCESS ##Return Success if all child nodes succeed
	
	current_node = _child_nodes[current_node_number]
	var result:NodeStatus.status = current_node._tick()
	
	if result == NodeStatus.status.SUCCESS:
		current_node_number += 1
		
	elif result == NodeStatus.status.FALIURE:
		current_node_number = 0
		return NodeStatus.status.FALIURE ##Return Failiure if any node fail
		
	return NodeStatus.status.RUNNING ##Return Running by default

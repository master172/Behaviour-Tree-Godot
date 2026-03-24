extends ControlNode
class_name SelectorNode

func _tick()->NodeStatus.status:
	if current_node_number >= child_nodes_length:
		current_node_number = 0
		return NodeStatus.status.FALIURE ##Return Faliure if all nodes return failiure
	
	current_node = _child_nodes[current_node_number]
	var result:NodeStatus.status = current_node._tick()
	
	if result == NodeStatus.status.SUCCESS:
		current_node_number = 0
		return NodeStatus.status.SUCCESS ##Return Success immediately on success
		
	elif result == NodeStatus.status.FALIURE:
		current_node_number += 1 ##Try next node in sequence
		
	return NodeStatus.status.RUNNING ##Running

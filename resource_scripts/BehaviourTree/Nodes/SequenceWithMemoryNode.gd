extends SequenceNode
class_name SequenceWithMemoryNode

var current_index: int = 0

func _tick() -> NodeStatus.status:
	if current_index >= child_nodes_length:
		current_index = 0
		return NodeStatus.Status.SUCCESS
	
	var result: NodeStatus.status = _child_nodes[current_index].tick()
	
	if result == NodeStatus.Status.SUCCESS:
		current_index += 1
	elif result == NodeStatus.Status.FAILURE:
		current_index = 0
		return NodeStatus.Status.FAILURE
	
	return NodeStatus.Status.RUNNING

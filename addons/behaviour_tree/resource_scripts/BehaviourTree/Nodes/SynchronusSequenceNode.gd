extends SequenceNode
class_name SynchronusSequenceNode

func tick() -> NodeStatus.status:
	for child: TreeNode in _child_nodes:
		var result :NodeStatus.status = child._tick()
		if result == NodeStatus.Status.SUCCESS:
			continue
		return result
	return NodeStatus.Status.SUCCESS

extends SelectorNode
class_name ReactiveSelectorNode

func tick() -> NodeStatus.status:
	for child: TreeNode in _child_nodes:
		var result :NodeStatus.status = child._tick()
		if result == NodeStatus.Status.SUCCESS:
			return NodeStatus.Status.SUCCESS
		if result == NodeStatus.Status.RUNNING:
			return NodeStatus.Status.RUNNING
	return NodeStatus.Status.FAILURE

extends SequenceNode
class_name ReactiveSequenceNode

func tick() -> NodeStatus.status:
	for child: TreeNode in _child_nodes:
		var result :NodeStatus.status = child._tick()
		if result == NodeStatus.Status.RUNNING:
			return NodeStatus.Status.RUNNING
		if result == NodeStatus.Status.FAILURE:
			return NodeStatus.Status.FAILURE
	return NodeStatus.Status.SUCCESS

extends SelectorNode
class_name SynchronusSelectorNode

func tick() -> NodeStatus.status:
	for child: TreeNode in _child_nodes:
		var result :NodeStatus.status = child._tick()
		if result == NodeStatus.Status.FAILURE:
			continue
		return result
	return NodeStatus.Status.FAILURE

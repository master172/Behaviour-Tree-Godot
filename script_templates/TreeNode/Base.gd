extends TreeNode

##the default tick implementation for tree nodes
func _tick()->NodeStatus.status:
	return NodeStatus.status.FALIURE

extends TreeNode

##the default tick implementation for tree nodes
func _tick()->NodeStatus:
	return NodeStatus.new(3)

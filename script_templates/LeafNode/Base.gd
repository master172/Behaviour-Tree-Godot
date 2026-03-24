extends LeafNode

##the default tick implementation for leaf nodes
func _tick()->NodeStatus.status:
	return NodeStatus.status.FALIURE

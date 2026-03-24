extends LeafNode

##the default tick implementation for leaf nodes
func _tick()->NodeStatus:
	return NodeStatus.new(3)

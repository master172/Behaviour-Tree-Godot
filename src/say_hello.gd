extends LeafNode

#the default tick implementation
func _tick()->NodeStatus:
	return NodeStatus.new(1)

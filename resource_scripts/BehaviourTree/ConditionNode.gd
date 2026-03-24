@abstract extends LeafNode
class_name ConditionNode

@abstract func evaluate()->bool

##the default tick implementation for leaf nodes
func _tick()->NodeStatus:
	return NodeStatus.new(0) if evaluate() else NodeStatus.new(1)

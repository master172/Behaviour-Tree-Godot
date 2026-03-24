@abstract extends LeafNode
class_name ConditionNode

@abstract func evaluate()->bool

##the default tick implementation for leaf nodes
func _tick()->NodeStatus.status:
	return NodeStatus.status.SUCCESS if evaluate() else NodeStatus.status.FALIURE

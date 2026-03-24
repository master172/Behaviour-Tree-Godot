@abstract extends LeafNode
class_name ConditionNode

@abstract func _evaluate()->bool

func _ready() -> void:
	super._ready()
	if _child_nodes.size() > 1:
		push_error("condition node shoudn't have any children")

##the default tick implementation for leaf nodes
func _tick()->NodeStatus.status:
	return NodeStatus.status.SUCCESS if _evaluate() else NodeStatus.status.FALIURE

extends DecoratorNode
class_name ForceFaliureNode

##the default tick implementation for decorators
func _tick()->NodeStatus.status:
	var result:NodeStatus.status = decorating_node._tick()
	if result == NodeStatus.status.RUNNING:
		return NodeStatus.status.RUNNING
	return NodeStatus.status.FALIURE

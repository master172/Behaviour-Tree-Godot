extends DecoratorNode
class_name KeepRunningUntilFailureNode

##the default tick implementation for decorators
func _tick()->NodeStatus.status:
	var result:NodeStatus.status = decorating_node._tick()
	if result == NodeStatus.status.FALIURE:
		return NodeStatus.status.FALIURE
	return NodeStatus.status.RUNNING

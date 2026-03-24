extends DecoratorNode
class_name KeepRunningUntilSuccessNode

##the default tick implementation for decorators
func _tick()->NodeStatus.status:
	var result:NodeStatus.status = decorating_node._tick()
	if result == NodeStatus.status.SUCCESS:
		return NodeStatus.status.SUCCESS
	return NodeStatus.status.RUNNING

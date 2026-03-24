extends DecoratorNode
class_name KeepRunningUntilFailureNode

##the default tick implementation for decorators
func _tick()->NodeStatus:
	var result:int = decorating_node._tick().get_node_status()
	if result == 1:
		return NodeStatus.new(1)
	return NodeStatus.new(2)

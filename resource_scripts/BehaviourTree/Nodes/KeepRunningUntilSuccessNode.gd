extends DecoratorNode
class_name KeepRunningUntilSuccessNode

##the default tick implementation for decorators
func _tick()->NodeStatus:
	var result:int = decorating_node._tick().get_node_status()
	if result == 0:
		return NodeStatus.new(0)
	return NodeStatus.new(2)

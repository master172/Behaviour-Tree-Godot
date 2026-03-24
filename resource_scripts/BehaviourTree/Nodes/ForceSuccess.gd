extends DecoratorNode
class_name ForceSuccessNode

##the default tick implementation for decorators
func _tick()->NodeStatus:
	var result:int = decorating_node._tick().get_node_status()
	if result == 2:
		return NodeStatus.new(2)
	return NodeStatus.new(0)

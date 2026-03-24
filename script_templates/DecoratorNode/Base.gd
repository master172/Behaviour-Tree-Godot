extends DecoratorNode

##the default tick implementation for decorators
func _tick()->NodeStatus.status:
	var result:NodeStatus.status = decorating_node._tick()
	return result

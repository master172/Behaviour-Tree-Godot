extends DecoratorNode

##the default tick implementation for decorators
func _tick()->NodeStatus:
	var result:NodeStatus = decorating_node._tick()
	return result

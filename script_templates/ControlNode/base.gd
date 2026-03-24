extends ControlNode

##the default tick implementation for control nodes
func _tick()->NodeStatus:
	return NodeStatus.new(3)

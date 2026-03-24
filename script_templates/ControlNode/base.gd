extends ControlNode

##the default tick implementation for control nodes
func _tick()->NodeStatus.status:
	return NodeStatus.status.FALIURE

extends DecoratorNode
class_name InverterNode

func _tick()->NodeStatus.status:
	var result:NodeStatus.status = decorating_node._tick()
	if result == NodeStatus.status.RUNNING:
		return NodeStatus.status.RUNNING
	return NodeStatus.status.SUCCESS if result == NodeStatus.status.FALIURE else NodeStatus.status.FALIURE

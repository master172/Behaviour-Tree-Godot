extends DecoratorNode
class_name InverterNode

func _tick()->NodeStatus:
	var result:int = decorating_node._tick().get_node_status()
	if result == 2:
		return NodeStatus.new(2)
	elif result != 3:
		return NodeStatus.new(0) if result == 1 else NodeStatus.new(1)
	return NodeStatus.new(3)

extends DecoratorNode
class_name TimeoutNode

@export var timeout_seconds: float = 1.0

var _start_time: int = -1

func _tick() -> NodeStatus:
	if _start_time == -1:
		_start_time = Time.get_ticks_msec()
	
	var result :int = decorating_node._tick().get_node_status()
	if result != 2:
		_start_time = -1
		return NodeStatus.new(result)
	
	var elapsed :float = (Time.get_ticks_msec() - _start_time) / 1000.0
	if elapsed > timeout_seconds:
		return NodeStatus.new(1)
	
	return NodeStatus.new(2)
	

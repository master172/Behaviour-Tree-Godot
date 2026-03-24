extends DecoratorNode
class_name DelayNode

@export var delay_seconds: float = 1.0

var _start_time: int = -1

func _tick() -> NodeStatus:
	if _start_time == -1:
		_start_time = Time.get_ticks_msec()
	
	var elapsed :float = (Time.get_ticks_msec() - _start_time) / 1000.0
	if elapsed < delay_seconds:
		return NodeStatus.new(2)
	
	var result :int = decorating_node._tick().get_node_status()
	if result != 2:
		_start_time = -1
	return NodeStatus.new(result)

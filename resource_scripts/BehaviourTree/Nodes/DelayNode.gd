extends DecoratorNode
class_name DelayNode

@export var delay_seconds: float = 1.0

var _start_time: int = -1

func _tick() -> NodeStatus.status:
	if _start_time == -1:
		_start_time = Time.get_ticks_msec()
	
	var elapsed :float = (Time.get_ticks_msec() - _start_time) / 1000.0
	if elapsed < delay_seconds:
		return NodeStatus.status.RUNNING
	
	var result :NodeStatus.status = decorating_node._tick()
	if result != NodeStatus.status.RUNNING:
		_start_time = -1
	return result

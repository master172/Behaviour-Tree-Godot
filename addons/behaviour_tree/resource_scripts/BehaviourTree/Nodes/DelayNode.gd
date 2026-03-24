extends DecoratorNode
class_name DelayNode

@export var delay_seconds: float = 1.0

var _start_time: int = -1

func _tick() -> NodeStatus.status:
	if _start_time == -1:
		_start_time = Time.get_unix_time_from_system()
	
	var elapsed :float = (Time.get_unix_time_from_system() - _start_time)
	if elapsed < delay_seconds:
		return NodeStatus.status.RUNNING
	
	var result :NodeStatus.status = decorating_node._tick()
	if result != NodeStatus.status.RUNNING:
		_start_time = -1
	return result

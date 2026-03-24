extends DecoratorNode
class_name TimeoutNode

@export var timeout_seconds: float = 1.0
@export var oneshot:bool = false

var _start_time: int = -1

func _tick() -> NodeStatus.status:
	if _start_time == -1:
		_start_time = Time.get_unix_time_from_system()
	
	var result :NodeStatus.status = decorating_node._tick()
	if result != NodeStatus.status.RUNNING:
		_start_time = -1
		return result
	
	var elapsed :float = (Time.get_unix_time_from_system() - _start_time)
	if elapsed > timeout_seconds:
		if not oneshot:
			_start_time = -1
		return NodeStatus.status.FALIURE
	
	return NodeStatus.status.RUNNING
	

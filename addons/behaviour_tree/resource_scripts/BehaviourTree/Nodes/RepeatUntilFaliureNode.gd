extends DecoratorNode
class_name RepeatUntilFaliureNode

@export var repeat:int = -1
var _current_count:int = 0


func _tick()->NodeStatus.status:
	while repeat < 0 or _current_count < repeat:
		var result:NodeStatus.status = decorating_node._tick()
		if result == NodeStatus.status.FALIURE:
			_current_count = 0
			return NodeStatus.status.FALIURE
		elif result == NodeStatus.status.RUNNING:
			return NodeStatus.status.RUNNING
		_current_count += 1
	
	_current_count = 0
	return NodeStatus.status.SUCCESS

extends DecoratorNode
class_name RepeatUntilSuccessfullNode

@export var repeat:int = -1
var _current_count:int = 0


func _tick()->NodeStatus:
	while repeat < 0 or _current_count < repeat:
		var result:int = decorating_node._tick().get_node_status()
		if result == 1:
			_current_count = 0
			return NodeStatus.new(0)
		elif result == 2:
			return NodeStatus.new(2)
		_current_count += 1
	
	_current_count = 0
	return NodeStatus.new(1)

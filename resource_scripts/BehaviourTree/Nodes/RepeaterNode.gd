extends DecoratorNode
class_name RepeaterNode

@export var repeat:int = -1
var _current_count:int = 0

##the default tick implementation for decorators
func _tick()->NodeStatus:
	while _current_count < repeat:
		var result:int = decorating_node._tick().get_node_status()
		if result == 1:
			_current_count = 0
			return NodeStatus.new(1)
		elif result == 2:
			return NodeStatus.new(2)
		_current_count += 1
	
	_current_count = 0
	return NodeStatus.new(0)

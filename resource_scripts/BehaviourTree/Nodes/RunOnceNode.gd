extends DecoratorNode
class_name RunOnceNode

var _has_run: bool = false
var _result: int = 3

##the default tick implementation for decorators
func _tick()->NodeStatus:
	if not _has_run:
		var result:int = decorating_node._tick().get_node_status()
		if result == 2:
			return NodeStatus.new(2)
		_result = result
		_has_run = true
	return NodeStatus.new(_result)

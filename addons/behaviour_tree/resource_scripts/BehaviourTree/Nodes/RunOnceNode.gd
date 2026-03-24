extends DecoratorNode
class_name RunOnceNode

var _has_run: bool = false
var _result: NodeStatus.status = NodeStatus.status.FALIURE

##the default tick implementation for decorators
func _tick()->NodeStatus.status:
	if not _has_run:
		var result:NodeStatus.status = decorating_node._tick()
		if result == NodeStatus.status.RUNNING:
			return NodeStatus.status.RUNNING
		_result = result
		_has_run = true
	return _result

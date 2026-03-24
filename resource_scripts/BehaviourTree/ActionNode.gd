@abstract extends LeafNode
class_name ActionNode

var function:Callable
var function_set:bool = false

func ready()->void:
	if actor.has_method(callable):
		function = Callable(actor,callable)
		function_set = true
		
func _tick()->NodeStatus:
	if function_set:
		function.call()
	return NodeStatus.new(0)

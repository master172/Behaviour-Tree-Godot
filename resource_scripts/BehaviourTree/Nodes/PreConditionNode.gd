extends DecoratorNode
class_name PreCondition

@export var function_holder:Node
@export var function_name:String
@export var default_option:NodeStatus.status = NodeStatus.status.FALIURE

var function:Callable
var function_set:bool = false

func ready()->void:
	if function_holder.has_method(function_name):
		function = Callable(function_holder,function_name)
		function_set = true
	if not function_set:
		push_error("Function not set for pre-condition node")

func _tick()->NodeStatus.status:
	var result:bool = function.call()
	if result == true:
		return decorating_node._tick()
	return default_option

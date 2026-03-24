@abstract extends LeafNode
class_name ActionNode

var function:Callable
var function_set:bool = false

func _ready()->void:
	super._ready()
	if actor.has_method(callable):
		function = Callable(actor,callable)
		function_set = true

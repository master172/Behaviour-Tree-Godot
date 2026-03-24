@abstract extends LeafNode
class_name ActionNode

var function:Callable
var function_set:bool = false

func _ready()->void:
	super._ready()
	if not actor:
		return
	if callable == "":
		push_warning("function name not provided but actor set")
		return
	if actor.has_method(callable):
		function = Callable(actor,callable)
		function_set = true
	else:
		push_error("no function found in actor: "+actor.name + " named: "+callable)

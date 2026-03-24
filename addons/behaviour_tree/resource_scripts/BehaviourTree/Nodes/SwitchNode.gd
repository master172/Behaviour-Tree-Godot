extends ControlNode
class_name SwitchNode

@export var black_board:BlackboardHost
@export var property:String = ""
@export var cases:Array[Variant] = []

func _ready()->void:
	super._ready()
	if black_board == null:
		push_error("black board not configured for switch node")
	if property == "":
		push_error("no property configured for switch node")
	if child_nodes_length != cases.size() + 1:
		push_error("switch nodes need n+1 children for n cases")

func _tick()->NodeStatus.status:
	var result:Variant = black_board._get_value(property)
	var case_number:int = cases.find(result)
	if case_number == -1:
		return _child_nodes[child_nodes_length-1]._tick()
	else:
		return _child_nodes[case_number]._tick()

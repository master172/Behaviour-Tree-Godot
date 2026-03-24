extends ControlNode
class_name WhileDoElse

var third_child_present:bool = false
var ran_else:bool = false

func _ready()->void:
	super._ready()
	var child_list_size:int = _child_nodes.size()
	if child_list_size < 2:
		push_error("If then Else must be provided with a minimum of two child nodes")
	if child_list_size == 3:
		third_child_present = true

#replace with your implementation
func _tick()->NodeStatus.status:
	var condition:NodeStatus.status = _child_nodes[0]._tick()
	if condition == NodeStatus.status.SUCCESS:
		ran_else = false
		var result:NodeStatus.status = _child_nodes[1]._tick()
		if result == NodeStatus.status.FALIURE:
			ran_else = false
			return NodeStatus.status.FALIURE
		return NodeStatus.status.RUNNING
	else:
		if third_child_present and not ran_else:
			ran_else = true
			return _child_nodes[2]._tick()
		ran_else = false
		return NodeStatus.status.FALIURE

extends ControlNode
class_name IfThenElseNode

var third_child_present:bool = false

func _ready()->void:
	super._ready()
	var child_list_size:int = _child_nodes.size()
	if child_list_size < 2:
		push_error("If then Else must be provided with a minimum of two child nodes")
	if child_list_size == 3:
		third_child_present = true

#replace with your implementation
func _tick()->NodeStatus.status:
	var result:NodeStatus.status = _child_nodes[0]._tick()
	if result == NodeStatus.status.SUCCESS:
		return _child_nodes[1]._tick()
	else:
		if third_child_present:
			return _child_nodes[2]._tick()
		return NodeStatus.status.FALIURE

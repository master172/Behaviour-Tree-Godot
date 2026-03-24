extends ControlNode
class_name ParallelAllNode

@export var success_count:int = -1
@export var faliure_count:int = -1



func ready()->void:
	if success_count == -1:
		success_count = child_nodes_length
	if faliure_count == -1:
		faliure_count = child_nodes_length

func _tick()->NodeStatus.status:
	var current_success_count:int = 0
	var current_faliure_count:int = 0
	
	for i:TreeNode in _child_nodes:
		var result:NodeStatus.status = i._tick()
		if result == NodeStatus.status.SUCCESS:
			current_success_count += 1
		elif result == NodeStatus.status.FALIURE:
			current_faliure_count += 1
	
	if current_success_count >= success_count:
		return NodeStatus.status.SUCCESS
	
	elif current_faliure_count >= faliure_count:
		return NodeStatus.status.FALIURE
	
	return NodeStatus.Status.RUNNING

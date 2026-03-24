extends ActionNode

func _tick()->NodeStatus.status:
	function.call()
	return NodeStatus.status.SUCCESS

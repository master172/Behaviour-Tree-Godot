extends ActionNode

func _tick()->NodeStatus.status:
	print("writing health")
	black_board._set_value("health",black_board._get_value("health",0)+10)
	return NodeStatus.status.SUCCESS

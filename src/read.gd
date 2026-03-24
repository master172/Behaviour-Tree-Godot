extends ActionNode

func _tick()->NodeStatus.status:
	print("reading health ",black_board._get_value("health"))
	return NodeStatus.status.SUCCESS

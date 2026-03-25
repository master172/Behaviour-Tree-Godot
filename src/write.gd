extends ActionNode

var times:int  = 0

func _tick()->NodeStatus.status:
	if times <= 10:
		times += 1
	if times > 10:
		return NodeStatus.status.FALIURE
	print("writing health")
	black_board._set_value("health",black_board._get_value("health",0)+10)
	return NodeStatus.status.SUCCESS

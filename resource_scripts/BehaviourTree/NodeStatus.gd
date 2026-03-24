extends Resource
class_name NodeStatus

@export_enum("SUCCESS","FALIURE","RUNNING","THROW_ERROR") var status:int

func _init(nodeStatus:int=3) -> void:
	self.status = nodeStatus
	if nodeStatus == 3:
		push_error("Try initialize node status with invalid status type")

func get_node_status()->int:
	return status

@abstract extends TreeNode
class_name LeafNode

@export var actor:Node
@export var callable:String
@export var black_board:BlackboardHost

func _tick()->NodeStatus.status:
	return NodeStatus.status.FALIURE

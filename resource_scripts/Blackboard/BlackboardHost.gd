extends Node
class_name BlackboardHost

@export var black_board:Blackboard

func _get_value(key:String,default:Variant = null)->Variant:
	return black_board._get_value(key,default)

func _set_value(key:String,value:Variant)->void:
	black_board._set_value(key,value)

func _has(key:String)->bool:
	return black_board._has(key)

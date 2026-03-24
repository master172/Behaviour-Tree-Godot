extends Resource
class_name Blackboard

@export var _data:Dictionary[String,Variant] = {}

func _get_value(key:String,default:Variant = null)->Variant:
	return _data.get(key,default)

func _set_value(key:String,value:Variant)->void:
	_data[key] = value

func _has(key:String)->bool:
	return _data.has(key)

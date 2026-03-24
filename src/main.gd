extends Node2D


func say_hello()->void:
	print("Hi")

func say_greeting()->void:
	print("Greetings")

func say_bye()->void:
	print("bye")

func default_function()->bool:
	return true if randi() % 2 == 0 else false

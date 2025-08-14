extends Node2D
@onready var hub: Control = $Hub
var score: int = 0


func _on_timer_timeout() -> void:
	score += 1000
	hub.update()
	global.score = score #全局脚本global.gd中的变量score,用来在GameOver界面展示最终得分
	

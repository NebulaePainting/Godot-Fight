extends Node2D

@onready var mob = load("res://scenes/mob.tscn")


func _on_timer_timeout() -> void:
	var instance = mob.instantiate()
	instance.position.y = randf_range(100, 520) #随机敌人的y坐标
	instance.position.x = 1000
	add_child(instance)#添加实例到节点mobs(敌人管理器)

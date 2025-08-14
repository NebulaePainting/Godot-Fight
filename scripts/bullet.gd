extends Node2D

@export var speed: int = 100
@export var max_distance: int = 600
var tag: String = "bullet"

func _process(delta: float) -> void:
	position.x += speed * delta
	
	if position.x >= max_distance:#子弹超出最大飞行范围自动释放
		queue_free() 

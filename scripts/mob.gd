extends CharacterBody2D

@export var speed = 150

func _process(delta: float) -> void:
	velocity.x = -speed #向左移动
	
	move_and_slide()
	
	if position.x <= -20: #超出屏幕20px时自动释放
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.tag == "player" :
		get_tree().change_scene_to_file("res://scenes/game_over_hub.tscn") #跳转到GameOver场景
	elif body.tag == "bullet" :
		call_deferred("queue_free")#延迟释放，会在当前帧结束后，在主线程空闲时调用指定方法。

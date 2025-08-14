extends CharacterBody2D

@onready var bullets: Node2D = $"../Bullets"
var BULLET = load("res://scenes/bullet.tscn")

var tag: String = "player" #用来和敌人碰撞时做检测

@export var speed: int = 100


func _process(delta: float) -> void:
	#简单移动的实现
	if Input.is_action_pressed("ui_up"):
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down") :
		velocity.y = speed
	else :
		velocity.y = 0
	move_and_slide()#用velocity实现需要该方法，你也可以用如position.y -= speed * delta方式实现

func shoot() -> void:
	var instance = BULLET.instantiate() #在将场景添加为子节点前需要实例化场景
	instance.position.x = position.x + 75 #让子弹在玩家的右75px初
	instance.position.y = position.y #让子弹y坐标与玩家相同
	bullets.add_child(instance)#添加实例到节点bullets(子弹管理器）

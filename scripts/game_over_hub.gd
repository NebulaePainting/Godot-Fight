extends Control
@onready var final_score: Label = $FinalScore


func _ready() -> void:
	final_score.text = "最终得分：%d" % global.score#全局脚本global.gd中的变量score

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

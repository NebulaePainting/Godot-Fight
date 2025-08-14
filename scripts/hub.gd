extends Control

@onready var game: Node2D = $".."
@onready var score: Label = $Score

func update():
	score.text = "分数：%d" % game.score

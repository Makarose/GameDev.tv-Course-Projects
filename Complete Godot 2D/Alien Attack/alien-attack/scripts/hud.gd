extends Control

@onready var score = $Score
@onready var livesleft = $LivesLeft

func set_score_label(new_score):
	score.text = "SCORE: " + str(new_score)

func set_lives(amount):
	livesleft.text = str(amount)

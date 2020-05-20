extends Node2D


onready var animetedSprite = $AnimatedSprite

func _ready():
	animetedSprite.frame = 0
	animetedSprite.play("Animate")


func _on_AnimatedSprite_animation_finished():
	queue_free()

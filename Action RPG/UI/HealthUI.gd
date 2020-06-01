extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var lavel = $Label

func set_hearts(value):
	hearts = clamp(value, 0, max_hearts)

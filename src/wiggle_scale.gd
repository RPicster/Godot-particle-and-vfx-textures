extends Node2D

var time := 0.0
onready var orig_scale : Vector2 = scale
export var power := 0.0
export var speed := 1.0

func _process(delta):
	time = wrapf(time+delta*speed, -PI,PI)
	scale = orig_scale + Vector2.ONE*(sin(time) * power)

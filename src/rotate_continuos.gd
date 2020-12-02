extends Sprite

var time := 0.0
export var speed := 1.0

func _process(delta):
	time = wrapf(time+delta*speed, -PI,PI)
	rotation = time

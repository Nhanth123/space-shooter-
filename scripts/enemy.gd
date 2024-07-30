extends Area2D

class_name Enemy

@export var speed = 150

func _physics_process(delta):
	global_position.y += delta * speed

func die():
	queue_free()


func _on_body_entered(body):
	if body is Player:
		body.die()
		die()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

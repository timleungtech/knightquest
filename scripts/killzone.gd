extends Area2D

@onready var timer = $Timer
@onready var death_sound = $DeathSound

func _on_body_entered(body):
	print("You died!")
	death_sound.play()
	Engine.time_scale = 0.2
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

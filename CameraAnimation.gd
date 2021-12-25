extends AnimationPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var is_walking=true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func _input(event):
	if Input.is_key_pressed(KEY_BACKSPACE):
		if is_walking:
			playback_speed=0
			is_walking=false
		else:
			playback_speed=1
			is_walking=true

func _on_CameraAnimation_animation_finished(anim_name):
	get_tree().quit()

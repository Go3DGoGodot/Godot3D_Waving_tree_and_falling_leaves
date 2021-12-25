tool
extends Position3D

func _process(delta):
	$"../../custom_grass".material_override.set_shader_param("player_pos", global_transform.origin)


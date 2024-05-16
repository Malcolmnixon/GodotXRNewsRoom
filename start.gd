extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if OS.has_feature("network_server"):
		get_tree().change_scene_to_file("res://server/server.tscn")
	elif OS.has_feature("client_vmc"):
		get_tree().change_scene_to_file("res://client/vmc/client_vmc.tscn")
	elif OS.has_feature("client_openxr"):
		get_tree().change_scene_to_file("res://client/openxr/client_openxr.tscn")
	else:
		get_tree().change_scene_to_file("res://client/spectator/client_spectator.tscn")

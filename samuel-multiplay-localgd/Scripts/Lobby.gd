extends Control

func _ready():
	get_tree().connect("connected_to_server", self, "connected")

func connected():
	print("CONNECTED")
	if not Net.is_host:
		rpc("iniciar_jogo")
		iniciar_jogo()

remote func iniciar_jogo():
	get_tree().change_scene("res://Scenes/game.tscn")

func _on_Join_pressed():
	Net.initialize_client($entrar/IP.text)

func _on_Host_pressed():
	Net.initialize_server()

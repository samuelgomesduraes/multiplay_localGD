extends Node2D

func _ready():
	Net.set_ids()
	create_players()

func create_players():
	for id in Net.peer_ids:
		create_player(id)
	create_player(Net.net_id)

#funcao que vai instanciar o jogador na cena game 
func create_player(id):
	var p = preload("res://Scenes/Player.tscn").instance()
	add_child(p)
	p.initialize(id)

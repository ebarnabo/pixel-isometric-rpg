extends Node2D

var player: Node2D
var enemies: Array = []
var npcs: Array = []

func _ready():
	player = $Player
	spawn_enemies()
	spawn_npcs()
	print("Jeu démarré — Aetherfall")

func spawn_enemies():
	for i in 5:
		var enemy = preload("res://scripts/enemy.gd").new()
		enemy.position = Vector2(randf_range(200, 1000), randf_range(200, 500))
		add_child(enemy)
		enemies.append(enemy)

func spawn_npcs():
	var shop = preload("res://scripts/shop_npc.gd").new()
	shop.position = Vector2(400, 300)
	add_child(shop)
	npcs.append(shop)

extends Node2D

var shop_items = [
	{"name": "Minerai de fer", "price": 10, "type": "resource"},
	{"name": "Potion de soin", "price": 25, "type": "consumable"},
	{"name": "Épée basique", "price": 100, "type": "weapon", "grade": "common"}
]

func _ready():
	var poly = Polygon2D.new()
	poly.polygon = PackedVector2Array([Vector2(-16,-20), Vector2(16,-20), Vector2(16,20), Vector2(-16,20)])
	poly.color = Color(0.6, 0.3, 0.1)
	add_child(poly)
	var label = Label.new()
	label.text = "Marchand"
	label.position = Vector2(-30, -40)
	add_child(label)

func interact(player):
	print("Boutique ouverte — items: ", shop_items.size())

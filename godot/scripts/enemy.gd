extends Node2D

var hp = 80
var alive = true
var target: Node2D

func _ready():
	var poly = Polygon2D.new()
	poly.polygon = PackedVector2Array([Vector2(-12,-12), Vector2(12,-12), Vector2(12,12), Vector2(-12,12)])
	poly.color = Color(0.2, 0.1, 0.4)
	add_child(poly)

func _process(delta):
	if not alive: return
	if target:
		var dir = (target.position - position).normalized()
		position += dir * 60 * delta
		if position.distance_to(target.position) < 30:
			print("Ennemi attaque")

func take_damage(dmg: int):
	hp -= dmg
	if hp <= 0:
		alive = false
		queue_free()

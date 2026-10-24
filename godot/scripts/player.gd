extends Node2D

var hp = 230
var max_hp = 230
var level = 1
var xp = 0
var xp_to_next = 100
var strength = 10
var inventory: Array = []
var equipped: Dictionary = {}
var jobs: Dictionary = {
	"forgeron": {"level": 1, "xp": 0},
	"alchimiste": {"level": 1, "xp": 0},
	"mineur": {"level": 1, "xp": 0}
}

func _process(delta):
	var dir = Vector2.ZERO
	if Input.is_action_pressed("ui_up"): dir.y -= 1
	if Input.is_action_pressed("ui_down"): dir.y += 1
	if Input.is_action_pressed("ui_left"): dir.x -= 1
	if Input.is_action_pressed("ui_right"): dir.x += 1
	position += dir.normalized() * 200 * delta

func gain_xp(amount: int):
	xp += amount
	if xp >= xp_to_next:
		level_up()

func level_up():
	level += 1
	xp -= xp_to_next
	xp_to_next = int(xp_to_next * 1.5)
	strength += 2
	max_hp += 20
	hp = max_hp
	print("Level up ! Niveau ", level)

func equip(item: Dictionary):
	equipped[item.slot] = item
	print("Équipé: ", item.name)

func craft(job: String, recipe: String):
	if jobs.has(job) and jobs[job].level >= 1:
		print("Craft réussi: ", recipe)
		inventory.append({"name": recipe, "grade": "rare"})
		jobs[job].xp += 10

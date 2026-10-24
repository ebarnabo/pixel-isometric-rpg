extends Node

# Autoload: GameSystems
# Dans Project Settings > Autoload

var player_stats = {
	"level": 1,
	"xp": 0,
	"hp": 230,
	"max_hp": 230,
	"strength": 10
}

var equipment_grades = ["common", "uncommon", "rare", "epic", "legendary", "unique"]
var sets = {
	"set_persecution": {
		"pieces": ["épée", "armure", "casque"],
		"bonus": {"strength": 50, "crit": 0.15}
	}
}

var recipes = {
	"forgeron": [
		{"name": "Épée Persecution", "level_req": 5, "mats": ["minerai_fer", "essence_ombre"], "grade": "legendary"}
	],
	"alchimiste": [
		{"name": "Potion de force", "level_req": 2, "mats": ["herbe", "eau"], "grade": "rare"}
	]
}

func get_set_bonus(equipped_pieces: Array) -> Dictionary:
	var bonus = {}
	for set_name in sets:
		var count = 0
		for piece in equipped_pieces:
			if piece in sets[set_name].pieces:
				count += 1
		if count >= 2:
			bonus.merge(sets[set_name].bonus)
	return bonus

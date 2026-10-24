# L'Éclat de la Persécution — Godot 4

Prototype de RPG isométrique type Dofus.

## Ouvrir le projet

1. Installe [Godot 4.3+](https://godotengine.org/download)
2. Clone le repo
3. Ouvre Godot → Import → sélectionne le dossier `godot/` (ou le root si déplacé)
4. Run (F5)

## Systèmes implémentés (fondations)

- Déplacement joueur (WASD / flèches)
- Ennemis avec IA basique + dégâts
- Level up + stats
- Équipements multi-grades (common → unique) + panoplies
- Jobs de craft (Forgeron, Alchimiste, Mineur) qui montent de niveau
- PNJ marchands (ressources / objets)
- Structure prête pour dialogue, quêtes, particules, tilemap isométrique

## Prochaines étapes recommandées

- TileMap isométrique + collision
- Sprites pixel (ou générés)
- UI inventaire / shop / craft (Control nodes)
- Particules GPU pour FX
- Sauvegarde (FileAccess)
- Classes de combat évolutives

Le dossier `godot/` contient le projet. L'ancien prototype web reste dans la racine pour référence.

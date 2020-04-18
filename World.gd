extends Node2D

export (PackedScene) var BULLET
export (PackedScene) var DNA
onready var spawnPoint : Vector2 = $SpawnPoint.position

func _ready():
	pass

func _on_Player_shoot_bullet(pos, rot):
	var bullet : RigidBody2D = BULLET.instance()
	bullet.position = pos
	bullet.rotation = rot
	bullet.linear_velocity = Vector2(cos(rot), sin(rot)) * 300
	print(bullet)
	
	add_child(bullet)


func _on_SpawnTimer_timeout():
	print("Spawning DNA!")
	var dna = DNA.instance()
	dna.position = spawnPoint
	dna.rotation = rand_range(0, 2 * PI)
	add_child(dna)

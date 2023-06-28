#@tool

# Hurt Scene

extends Area2D
class_name Hurt_cmp

@export var health_compo:Health_cmp

func on_hurt():
	health_compo.health = randi() % 101

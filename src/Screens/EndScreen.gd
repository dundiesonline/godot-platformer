extends Control

onready var stats_lbl: = $Stats;

func _ready() -> void:
	stats_lbl.text = stats_lbl.text % [PlayerData.score, PlayerData.deaths]

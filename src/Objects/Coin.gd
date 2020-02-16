extends Area2D

export var score_value: = 50;

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer");

func _on_Coin_body_entered(body: PhysicsBody2D) -> void:
	#bug on coin can be scored again
	PlayerData.score += score_value;
	$CollisionShape2D.disabled = true;
	anim_player.play("fade_out");

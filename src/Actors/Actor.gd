extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL: = Vector2.UP;
export var gravity: = 3000.00;

export var speed: = Vector2(300.0, 1000.0);

var _velocity: = Vector2.ZERO;

func _ready():
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
#	_velocity.y += gravity * delta;
	pass;

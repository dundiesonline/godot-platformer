extends Control

onready var scene_tree: = get_tree();
onready var paused_overlay: ColorRect = $PauseOverlay;
onready var score_lbl: Label = $Score;
onready var title_lbl: Label = $PauseOverlay/Title;

var paused: = false setget set_paused;

func _ready() -> void:
	self.paused = false;
	PlayerData.connect("score_updated", self, "update_interface");
	PlayerData.connect("player_died", self, "_PlayerData_player_died");
	update_interface();
	
func update_interface() -> void:
	score_lbl.text = "Score: %s" % PlayerData.score;
	
func _PlayerData_player_died() -> void:
	self.paused = true;
	title_lbl.text = "Patay ka!";
	
	
func set_paused(value: bool) -> void:
	paused = value;
	scene_tree.paused = value;
	paused_overlay.visible = value;
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause") and title_lbl.text != "Patay ka!":
		self.paused = !paused;
		scene_tree.set_input_as_handled();
	


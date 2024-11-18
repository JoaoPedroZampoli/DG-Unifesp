extends Node2D

var score_left = 0
var score_right = 0
signal scored

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_goal_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		score_right += 1
		$UI/Label.text = str(score_left) + " X " + str(score_right)
		emit_signal("Scored")
		
func _on_goal2_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		score_left += 1
		$UI/Label.text = str(score_left) + " X " + str(score_right)
		emit_signal("Scored")

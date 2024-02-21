extends KinematicBody2D

export (int) var speed = 200
export (float) var rotation_speed = 1.5

var velocity = Vector2()
var rotation_dir = 0

func _ready():
	pass # Replace with function body.

func _on_Ship_body_entered(body: RigidBody2D):
	print("collde")
	if body.is_in_group("Obstacle"):
		print("collide with obstacle")
		queue_free()

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_action_pressed("move_right"):
		rotation_dir += 1
	if Input.is_action_pressed("move_left"):
		rotation_dir -= 1
	if Input.is_action_pressed("move_down"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("move_up"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)

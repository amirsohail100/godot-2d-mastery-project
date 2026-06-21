# extends CharacterBody2D # 🔥 NOTE: Ab hum Node2D nahi, CharacterBody2D use kar rahe hain!

# var speed: float = 400.0

# func _physics_process(_delta: float) -> void:
# 	var direction := Vector2.ZERO
	
# 	# Input polling
# 	if Input.is_action_pressed("d"):
# 		direction.x += 1.0
# 	if Input.is_action_pressed("a"):
# 		direction.x -= 1.0
# 	if Input.is_action_pressed("s"):
# 		direction.y += 1.0
# 	if Input.is_action_pressed("w"):
# 		direction.y -= 1.0
		
# 	if direction.length() > 0:
# 		direction = direction.normalized()
		
# 	# 🔥 PART 7: Engine ki velocity set ki aur move_and_slide chalaya
# 	# Isme '* delta' karne ki zaroorat nahi hai, Godot khud handle karta hai!
# 	velocity = direction * speed
	
# 	# Yeh function robot ko chalaega aur collisions (takrao) ko handle karega
# 	move_and_slide()

# 	position.x = clamp(position.x, 0, get_viewport_rect().size.x)
# 	position.y = clamp(position.y, 0, get_viewport_rect().size.y)


extends CharacterBody2D

# Sprite2D node ko connect kiya
@onready var player_sprite = $Sprite2D

var speed: float = 400.0
var screen_size: Vector2

func _ready() -> void:
	# Screen ka total size nikalna
	screen_size = get_viewport_rect().size
	
	# Connection check karne ke liye safe print
	if player_sprite == null:
		print("🚨 ERROR: Sprite2D node nahi mila! Scene Tree mein naam check karo.")
	else:
		print("✅ SUCCESS: Sprite2D successfully connect ho gaya hai!")

func _physics_process(_delta: float) -> void:
	var direction: Vector2 = Vector2.ZERO
	
	# 🕹️ Part 3: Input Polling (WASD keys)
	if Input.is_action_pressed("d"):
		direction.x += 1.0
	if Input.is_action_pressed("a"):
		direction.x -= 1.0
	if Input.is_action_pressed("s"):
		direction.y += 1.0
	if Input.is_action_pressed("w"):
		direction.y -= 1.0
		
	# 📐 Part 5: Diagonal Speed Fix (Normalization)
	if direction.length() > 0:
		direction = direction.normalized()
		
	# 🚀 Part 7: Physics Movement (Velocity setup)
	velocity = direction * speed
	move_and_slide()
	
# 🔄 Part 9: Character Sprite Flipping
	if player_sprite != null:
		if velocity.x > 0:
			player_sprite.flip_h = false
			print("👉 Robot RIGHT dekh raha hai (flip_h = false)")
		elif velocity.x < 0:
			player_sprite.flip_h = true
			print("👈 Robot LEFT dekh raha hai (flip_h = true)")

	# 🛑 Part 8: Screen Clamping (Boundary Wall)
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
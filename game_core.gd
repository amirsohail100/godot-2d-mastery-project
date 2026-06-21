# extends Node2D

# @onready var player_sprite := $Sprite2D as Sprite2D
# @onready var game_timer := $Timer as Timer


# func _ready() -> void:
#     if has_node("Timer") and has_node("Sprite2D"):
#         game_timer.wait_time = 3.0
#         game_timer.start()

# func _process(_delta: float) -> void:
#     if game_timer.is_stopped():
#         player_sprite.queue_free()
#         set_process(false)


# func _ready() -> void:
#     if has_node("Timer") and has_node("Sprite2D"):
#         # game_timer.timerout.connect(_on_timer_timeout)
#         game_timer.wait_time = 3.0
#         game_timer.start()


# func _on_timer_timeout() -> void:
#     player_sprite.queue_free()

# var speed: float = 300.0

# func _process(delta: float) -> void:
#     var direction := Vector2.ZERO
#     if Input.is_action_pressed("d"):
#         direction.x += 1
#     if Input.is_action_pressed("a"):
#         direction.x -= 1
#     if Input.is_action_pressed("s"):
#         direction.y += 1
#     if Input.is_action_pressed("w"):
#         direction.y -= 1

#     # player_sprite.position += direction * speed * delta
#     player_sprite.position += direction.normalized() * speed * delta

# func _process(delta: float) -> void:
#     var direction := Vector2.ZERO
#     if Input.is_action_pressed("d"):
#         direction.x += 1
#     if Input.is_action_pressed("a"):
#         direction.x -= 1
#     if Input.is_action_pressed("s"):
#         direction.y += 1
#     if Input.is_action_pressed("w"):
#         direction.y -= 1

#     # player_sprite.position += direction * speed * delta
#     player_sprite.position += direction.normalized() * speed * delta


# func _process(delta: floot) -> void:
#     var direction := Vector2.ZERO
#     if Input.is_action_pressed("d"):
#         direction.x += 1
#     if Input.is_action_pressed("a"):
#         direction.x -= 1
#     if Input.is_action_pressed("s"):
#         direction.y += 1
#     if Input.is_action_pressed("w"):
#         direction.y -= 1

#     if direction.length() > 0:
#         direction = direction.normalize()
#     player_sprite.position += direction * speed * delta

# func _ready() -> void:
# 	if has_node("Timer") and has_node("Sprite2D"):
#         if Input.is_action_pressed("s"):
#    


extends Node2D

@onready var player_sprite := $Sprite2D as Sprite2D
@onready var game_timer := $Timer as Timer

var speed: float = 300.0

# Track rakhne ke liye ki timer sirf ek baar start ho
var is_timer_started: bool = false

func _ready() -> void:
    if has_node("Sprite2D") and has_node("Timer"):
        game_timer.timeout.connect(_on_timer_timeout)
        game_timer.wait_time = 3.0

        
func _process(delta: float) -> void:
    var direction := Vector2.ZERO
    if Input.is_action_pressed("d"):
        direction.x += 1
    if Input.is_action_pressed("a"):
        direction.x -= 1
    if Input.is_action_pressed("s"):
        direction.y += 1
        if not is_timer_started:
            game_timer.start()
            is_timer_started = true
    if Input.is_action_pressed("w"):
        direction.y -= 1
    
    if direction.length() > 0:
        direction = direction.normalized()
    player_sprite.position += direction * speed * delta
    
func _on_timer_timeout() -> void:
    player_sprite.queue_free()
    set_process(false)

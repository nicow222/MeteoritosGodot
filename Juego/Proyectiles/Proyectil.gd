class_name Proyectil
extends Area2D

## Atributos
var velocidad:Vector2 = Vector2.ZERO
var danio:float

## Metodos	
func _physics_process(delta: float) -> void:
	position += velocidad * delta
	
func crear(pos: Vector2, dir: float, vel:float, danio_p: int) -> void:
	position = pos
	rotation = dir
	velocidad = Vector2(vel, 0).rotated(dir)
	danio = danio_p


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

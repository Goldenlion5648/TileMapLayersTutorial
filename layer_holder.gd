extends Node2D
const DEFAULT_LAYER = preload("res://default_layer.tscn")
@onready var red_layer: TileMapLayer = $red_layer
@onready var blue_layer: TileMapLayer = $blue_layer

const MAIN_SOURCE_ID = 0
const BLUE_TILE_ATLAS_POS = Vector2i(1, 1)
const GREEN_TILE_ATLAS_POS = Vector2i(0, 1)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(3):
		var new_layer = DEFAULT_LAYER.instantiate()
		add_child(new_layer)
	for y in range(6):
		blue_layer.set_cell(Vector2i(-3, y), MAIN_SOURCE_ID, BLUE_TILE_ATLAS_POS)
	
	var green_layer_index = 2
	var green_layer = get_child(green_layer_index) as TileMapLayer
	for y in range(-3, 4):
		green_layer.set_cell(Vector2i(0, y), MAIN_SOURCE_ID, GREEN_TILE_ATLAS_POS)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

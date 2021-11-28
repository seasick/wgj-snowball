extends Node


var labels = {
	# adding list because i'm yet too lazy to sort by count or weight
	"bacon": 0,
	"burgerCheeseDouble": 0,
	"cocktail": 0,
	"present": 0,
	"trainWagon": 0,
	"lightpost": 0,
	"snowman": 0,
	"treePine": 0,
	"bench": 0,
	"tree_small": 0,
	"treePineSnow": 0,
	"tree_large": 0,
	"ship_light": 0,
	"ship_dark": 0,
	"ship_wreck": 0,
	"cannonLarge": 0,
	"tower": 0,
	"house_type": 0,
	"skyscraper": 0
}

# dictonary of sample weight of all groups
var weights = {}
var ItemLabel = load("res://scenes/Gui/ItemLabel.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var candidates = get_tree().get_nodes_in_group("pickable_candidate")

	for candidate in candidates:
		var key = candidate.label_group

		if !labels.has(key):
			labels[key] = 0

		labels[key] += 1
		weights[key] = candidate.pickable_weight

	EventBus.subscribe("sticked", self, "_on_EventBus_sticked")
	_render_text()


func _on_EventBus_sticked(value):
	labels[value.label_group] -= 1
	_render_text()

func _render_text():
	# var _text = ""
	var items_left = 0

	# Remove all childs
	for n in get_children():
		remove_child(n)
		n.queue_free()

	for key in labels.keys():
		if labels[key] > 0 and weights[key] < GameData.data.max_stickee_volume:
			var label = ItemLabel.instance()

			label.init(key, labels[key])

			add_child(label)
			items_left += labels[key]

	if items_left == 0:
		get_node("./GameOver").visible = true

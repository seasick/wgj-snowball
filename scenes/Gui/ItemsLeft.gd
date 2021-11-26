extends Label


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


# Called when the node enters the scene tree for the first time.
func _ready():
	var candidates = get_tree().get_nodes_in_group("pickable_candidate")

	for candidate in candidates:
		var key = candidate.label_group

		if !labels.has(key):
			labels[key] = 0

		labels[key] += 1

	EventBus.subscribe("sticked", self, "_on_EventBus_sticked")
	_render_text()


func _on_EventBus_sticked(value):
	labels[value.label_group] -= 1
	_render_text()

func _render_text():
	var _text = ""

	for key in labels.keys():
		if labels[key] > 0:
			_text = str(_text, "\n", key, ": ", labels[key])

	text = _text

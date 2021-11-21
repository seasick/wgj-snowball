extends Label

var count = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	EventBus.subscribe("sticked", self, "_onBallsizeUpdate")


func _onBallsizeUpdate(value):
	count += 1
	text = str(count)

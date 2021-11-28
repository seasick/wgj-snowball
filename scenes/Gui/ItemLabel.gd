extends Control


var label = ""
var count = 0

func init(_label, _count):
	label = _label
	count = _count
	
func _ready():
	$Counter.text = str(count)
	$Label.text = label

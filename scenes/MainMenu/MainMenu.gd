extends MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var export_config: ConfigFile = ConfigFile.new()
	var err = export_config.load("res://export_presets.cfg")
	var version = "dev"
	
	var newGameLabel = $MarginContainer/VBoxContainer/VBoxContainer/NewGameLabel
	var optionsLabel = $MarginContainer/VBoxContainer/VBoxContainer/OptionsLabel
	var versionLabel = $MarginContainer/VBoxContainer/VersionLabel
	
	# Display version number (found in first preset of export config)
	if err == OK:
		version = export_config.get_value("preset.0.options", "application/file_version")
		versionLabel.text = version
	else:
		print('[engine_root] Error open export_presets.cfgs')
		
	if newGameLabel.connect("button_down", self, "_on_NewGameLabel_button_down") != OK:
		print("Error connecting to newGame label")
		
	if optionsLabel.connect("button_down", self, "_on_OptionsLabel_button_down") != OK:
		print("Error connecting to options label")

func _on_NewGameLabel_button_down():
	get_tree().change_scene("res://scenes/Playground.tscn")

func _on_OptionsLabel_button_down():
	# TODO
	print("NOT IMPLEMENTED")

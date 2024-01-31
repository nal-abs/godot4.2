extends Control

func _ready():
	var a = true
	if a:
		apply_custom_theme("res://customButton.tres")
	else:
		apply_custom_theme("res://customButton2.tres")

func apply_custom_theme(theme_path: String) -> void:
	# Load the theme
	var custom_theme = load(theme_path)

	# Apply the theme to the button
	$Button.theme = custom_theme
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://HomePage.tscn")

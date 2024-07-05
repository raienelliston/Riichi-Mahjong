extends Control


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Dev_Level.tscn")


func _on_setttings_button_pressed():
	get_tree().change_scene_to_file("res://Options_Menu.tscn")


func _on_exit_button_pressed():
	get_tree().quit()

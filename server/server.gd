extends Control


func _on_start_button_pressed() -> void:
	# Switch to Running page
	%Pages.current_tab = 1


func _on_stop_button_pressed() -> void:
	# Switch to Start page
	%Pages.current_tab = 0

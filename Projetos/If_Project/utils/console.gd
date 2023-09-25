extends Node

signal text_submitted(text: String)

@onready var output_pane: RichTextLabel = %OutputPane
@onready var input_text: TextEdit = %InputText
@onready var submit_button: Button = %SubmitButton


func _ready() -> void:
	input_text.grab_focus()


func write(message: String, color := Color.WHITE) -> void:
	print(message)
	output_pane.push_color(color)
	output_pane.append_text(message)
	output_pane.pop()


func write_line(message: String, color := Color.WHITE) -> void:
	print(message)
	output_pane.push_color(color)
	output_pane.append_text(message + "\n")
	output_pane.pop()


func clear() -> void:
	output_pane.clear()


func read_line() -> Signal:
	return text_submitted


func _on_input_text_gui_input(event: InputEvent) -> void:
	if event is InputEventKey and (Input.is_key_pressed(KEY_ENTER) or Input.is_key_pressed(KEY_KP_ENTER)):
		_submit_text()


func _submit_text() -> void:
	var text := input_text.text
	input_text.clear.call_deferred()
	
	output_pane.push_italics()
	output_pane.push_color(Color.LIGHT_GRAY)
	output_pane.append_text("> " + text + "\n")
	output_pane.pop()
	output_pane.pop()
	
	text_submitted.emit(text)


func _on_submit_button_pressed() -> void:
	_submit_text()

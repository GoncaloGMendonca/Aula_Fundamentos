extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write("Enter your age")
	var age: int = int(await Console.read_line())
	
	if age >= 18:
		Console.write_line("You can take the driver  ")
	else:
		Console.write_line("You can't take the driver ")

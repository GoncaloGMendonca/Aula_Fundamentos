extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write_line("Escreve um numero")
	var number = int (await Console.read_line())
	
	
	
	for i in range(0, number + 1,1):
		Console.write_line(str(i))

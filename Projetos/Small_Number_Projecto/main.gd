extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write_line("Escreve um number")
	var a: int = (await Console.read_line())
	Console.write_line("Escreve outro number")
	var b: int = (await Console.read_line())
	
	var smallest: int = min (a,b)
	Console.write_line("o numero menor é" str())
	

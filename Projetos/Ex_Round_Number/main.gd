extends Node


# Called when the program starts.
func _ready() -> void:
	var a: float = float (await Console.read_line())
	var b: int = int (await Console.read_line())
	
	
	var result: int
	if b == 1: 
		result = ceil(a)
	elif b == 0:
		result = floor(a) 
	else: 
		result = round(a)
		
	Console.write_line(str(result))

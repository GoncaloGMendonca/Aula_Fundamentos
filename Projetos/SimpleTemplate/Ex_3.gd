extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Console.write("Fara")
	var f_string:String =await  Console.read_line()
	var f: float =float(f_string)
	
	var c:float = 5.0/9.0*(f-32)
	
	
	Console.write("Temps em Celsius")
	
	Console.write_line(str(c))

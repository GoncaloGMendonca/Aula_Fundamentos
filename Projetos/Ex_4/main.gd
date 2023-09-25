extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write("Escreve o teu nome")
	var name: String = await  Console.read_line()
	Console.write("Escreve a tua idade")
	var age: int = int(await Console.read_line())
	
	Console.write_line("Hello " + name + ", my name is computer")
	Console.write_line("You Have " + str(age) + " years " )

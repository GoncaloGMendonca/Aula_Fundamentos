extends Node


# Called when the program starts.
func _ready() -> void:
	while true: 
		Console.clear()
		Console.write_line("1. Play Game")
		Console.write_line("2. Settings")
		Console.write_line("0. Quit Game")
		
		Console.write_line("")
		Console.write("Choose a option")
		var option: String = await Console.read_line()
		
		match option:
			"1":
				Console.write_line("Have Fun!")
				Console.write_line("Press Submit to continue")
				await Console.read_line()
			"2":
				Console.write_line("Oops, There is no setting's ")
				Console.write_line("Press Submit to continue")
				await Console.read_line()
				
		if  option== "0":
			break

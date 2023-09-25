extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write("Enter the Smash Charater")
	var grade: String = await Console.read_line()	

	match grade:
		"S":
			Console.write_line("These character is strongest")
		"A":
			Console.write_line("These character are strong")
		"B":
			Console.write_line("These character are still viable")
		"C" , "D", "F" :
			Console.write_line("These character are not competive viable")
		_:
			Console.write_line("None Fund")




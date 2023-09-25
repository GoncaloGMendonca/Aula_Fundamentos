extends Node


# Called when the program starts.
func _ready() -> void:
	Console.write_line("Enter a Number:")
	var num: int= int(await Console.read_line())
	
	var sum: int = 0
	var count: int = 1
	
	while count <= num:
		sum = sum + count
		count= count + 1
		
	Console.write("The sun is: ") 
	Console.write_line(str(sum)) 
s

extends Node


# Called when the program starts.
func _ready() -> void:
	var numbers: Array[int] = []
	numbers.resize(10)
	
	for i in range(0, numbers.size(),1):
		numbers[i]= 10 + i 

	for j in numbers.size():
		Console.write_line(str(numbers[j]))

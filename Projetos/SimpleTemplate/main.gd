extends Node
 

func _ready() -> void: 
	var a: String = await Console.read_line()
	var b: String = await Console.read_line()



	var sum: int = int(a) + int(b) 

#Output

	Console.write_line(str(sum))

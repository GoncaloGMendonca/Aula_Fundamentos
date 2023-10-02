extends Node


# Called when the program starts.
func _ready() -> void:
	var party: Array[String] = [
		"Pikachu",
		"Geodude",
		"Zubat",
		"Abra",
		"Raichu",
	]
	
	
	for i in range(0, party.size(),1): 
		if party[i] == "Abra": 
			party[i] = "Mr. Mime"
			break
	
	for i in party.size():
		Console.write_line(party[i])
 

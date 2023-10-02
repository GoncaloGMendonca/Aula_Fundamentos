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
	
#		Console.write_line("Current Team")
#	for i in range(0, party.size(),1): 
#		Console.write_line(str(i+1) + "." + party[i])
#

	print_roster("Current Roster:", party)

	Console.write("\nChoose a pokemon to replace with Mr.Mime: ")
	var number := int(await Console.read_line())
	party[number - 1] = "Mr. Mime"
		
#	Console.write_line("\nUpdated Team: ")
#	for i in party.size():
#		Console.write_line(party[i])

	print_roster("\nUpdated Roster", party) 

func print_roster(title: String, roster: Array[String],show_numbers: bool = false) -> void: 
	Console.write_line(title)
	for i in range(0, roster.size(),1): 
		Console.write("\t")
		if show_numbers:
			Console.write_line(str(i + 1) + ".")
		Console.write_line(roster[i])

extends Node


# Called when the program starts.
func _ready() -> void:
	var rand := randi_range(0,10)
	var count := 0 #Conta as vezes que o utilizaddor tenta
	var guess:= -1 # numero que o utilizador mete 
	
	while guess !=rand:
		Console.write("Enter your guess:")
		guess = int(await Console.read_line())
		count = count + 1 

	Console.write_line("Correct! You took " + str(count) + " guesses")

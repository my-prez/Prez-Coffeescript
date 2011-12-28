class Human
	constructor:(@firstName = "John", @lastName = "Doe")->
	
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
	
john = new Human
bob = new Human "Bob", "Morane"
sam = new Human "Sam", "LePirate"

#Human.prototype.hello
Human::hello = ->
	console.log "Salut #{@firstName} #{@lastName}"
	
	
john.hello()
bob.hello()
sam.hello()

angelina = new Human "Angelina", "Jolie"
angelina.hello()

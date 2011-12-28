class Human
	constructor:(@firstName = "John", @lastName = "Doe")->
		
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
		
bob = new Human "Bob", "Morane"
bob.hello()
bob.firstName = "BOB"
bob.lastName = "MORANE"
bob.hello()

john = (new Human()).hello()

console.log JSON.stringify bob

console.log typeof bob
console.log bob.constructor.name
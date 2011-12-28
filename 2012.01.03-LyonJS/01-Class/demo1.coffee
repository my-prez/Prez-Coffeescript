class Human
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
		
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
bob = new Human "Bob", "Morane"
bob.hello()
bob.firstName = "BOB"
bob.lastName = "MORANE"
bob.hello()

console.log typeof bob
console.log bob.constructor.name
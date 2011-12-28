class Human
	
	constructor:(first, last)->
		#private variables
		firstName = first
		lastName = last
		
		#Getters Setters
		@getFirstName = ->
			firstName
		@setFirstName = (value)->
			firstName = value
			
		@getLastName = ->
			lastName
		@setLastName = (value)->
			lastName = value

	hello:->
		# !!! hello ne peut pas accéder aux variables firstName & lastName
		console.log "Hello #{@getFirstName()} #{@getLastName()}"
		
				
bob = new Human "Bob", "Morane"
bob.hello()
bob.setFirstName "BOB"
bob.setLastName "MORANE"
bob.hello()
console.log bob.firstName

console.log JSON.stringify bob

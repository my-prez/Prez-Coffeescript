class Human
	
	constructor:(first, last)->
		#private variables
		firstName = first
		lastName = last
		
		#properties
		Object.defineProperty @, "FirstName",
			get:->
				console.log "Get FirstName : ", firstName
				firstName
			set: (value)->
				console.log "Set FirstName : ", value
				firstName = value
			enumerable: true
			configurable: true
			
		Object.defineProperty @, "LastName",
			get:->
				console.log "Get LastName : ", lastName
				lastName
			set: (value)->
				console.log "Set LastName : ", value
				lastName = value
			enumerable: true
			configurable: true			
		

	hello:->
		# !!! hello ne peut pas accéder aux variables firstName & lastName
		console.log "Hello #{@FirstName} #{@LastName}"
		
				
bob = new Human "Bob", "Morane"
bob.hello()
bob.FirstName = "BOB"
bob.LastName = "MORANE"
bob.hello()
console.log bob.firstName

console.log JSON.stringify bob

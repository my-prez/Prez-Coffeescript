class Human
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
		
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
		
class SuperHero extends Human
	constructor:(first, last, name)->
		super first, last
		@name = name
	
	secret:->
		console.log "Hello #{@name}"

clark = new SuperHero "Clark", "Kent", "SuperMan"
clark.hello()
clark.secret()
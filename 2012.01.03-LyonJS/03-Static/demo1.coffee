class Human
	#Static variable
	humanCounter : 0
	
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
		
		Human::humanCounter += 1
		
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
class SuperHero extends Human
	#Static variable
	superHeroCounter : 0
		
	constructor:(first, last, name)->
		super first, last
		@name = name
		
		SuperHero::superHeroCounter += 1
	
	secret:->
		console.log "Hello #{@name}"


bob = new Human "Bob", "Morane"
sam = new Human "Sam", "LePirate"

clark = new SuperHero "Clark", "Kent", "SuperMan"
peter = new SuperHero "Peter", "Parker", "SpiderMan"

console.log "Human Counter (from Human) : #{Human::humanCounter}, (from SuperHero) : #{SuperHero::humanCounter}"
console.log "SuperHero Counter : #{SuperHero::superHeroCounter}"

console.log peter.HumanCounter
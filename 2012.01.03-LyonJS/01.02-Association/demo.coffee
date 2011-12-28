class Dog
	constructor:(name)->
		@name = name

class Human

	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
		@hisDog = null

	adopt:(dog)->
		@hisDog = dog
		console.log "#{@firstName} #{@lastName} adopts #{dog.name}"
		
	giveHisDogTo:(human)->
		human.hisDog = @hisDog
		console.log "#{@firstName} #{@lastName} gives #{@hisDog.name} to #{human.firstName} #{human.lastName}"
		@hisDog = null
		
bob = new Human "Bob", "Morane"
sam = new Human "Sam", "LePirate"
wolf = new Dog "Wolf"

bob.adopt wolf
console.log "Bob's dog : #{bob.hisDog.name}"
bob.giveHisDogTo sam
console.log "Sam's dog : #{sam.hisDog.name}"
console.log "Bob's dog : #{bob.hisDog.name}"
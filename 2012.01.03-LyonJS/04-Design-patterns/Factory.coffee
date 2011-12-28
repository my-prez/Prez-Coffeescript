class Doll
	what:->
		console.log "this is a doll"
	
class Car
	what:->
		console.log "this is a car"

class SantaClaus
	uniqueSantaClaus:null
	constructor:->
		@name = "SANTA CLAUS"

	@getTheOne:->
		if SantaClaus::uniqueSantaClaus is null
			SantaClaus::uniqueSantaClaus = new SantaClaus()
		else
			console.log "BIEN ESSAYE MAIS IL N'EXISTE QU'UN SEUL #{SantaClaus::uniqueSantaClaus.name}"
		SantaClaus::uniqueSantaClaus
	
	offers:(toyName)->
		if toyName is "car" then return new Car
		if toyName is "doll" then return new Doll


santa = SantaClaus.getTheOne()

santa.offers("car").what()
santa.offers("doll").what()

console.log santa.offers("car").constructor.name
console.log santa.offers("doll").constructor.name
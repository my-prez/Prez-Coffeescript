class FakeAbstractToy
	what:->
	
class Doll extends FakeAbstractToy
	what:->
		console.log "this is a doll"
	
class Car extends FakeAbstractToy
	what:->
		console.log "this is a car"

class Game extends FakeAbstractToy


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
		if toyName is "game" then return new Game


santa = SantaClaus.getTheOne()

car = santa.offers("car").what()
doll = santa.offers("doll").what()
game = santa.offers("game").what()

console.log santa.offers("car").constructor.name
console.log santa.offers("doll").constructor.name
console.log santa.offers("game").constructor.name
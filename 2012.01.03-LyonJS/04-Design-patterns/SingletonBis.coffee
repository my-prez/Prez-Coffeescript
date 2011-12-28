
class SantaClaus
	uniqueSantaClaus:null
	constructor:()->
		@name = "SANTA CLAUS"
		if not arguments.length then return SantaClaus.getTheOne()
		
	@getTheOne:()->
		if SantaClaus::uniqueSantaClaus is null
			console.log "NEW"
			SantaClaus::uniqueSantaClaus = new SantaClaus(true)
		else
			console.log "BIEN ESSAYE MAIS IL N'EXISTE QU'UN SEUL #{SantaClaus::uniqueSantaClaus.name}"
		
		SantaClaus::uniqueSantaClaus

santa = SantaClaus.getTheOne()
console.log santa.name
santaAgain = SantaClaus.getTheOne()
console.log santaAgain.name

santaAgain.name = "PERE NOEL";
console.log santa.name

santaAgainAgain = SantaClaus.getTheOne()

fakeSanta = new SantaClaus()

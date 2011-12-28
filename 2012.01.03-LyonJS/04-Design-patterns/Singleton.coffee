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

santa = SantaClaus.getTheOne()
console.log santa.name
santaAgain = SantaClaus.getTheOne()
console.log santaAgain.name

santaAgain.name = "PERE NOEL";
console.log santa.name

santaAgainAgain = SantaClaus.getTheOne()
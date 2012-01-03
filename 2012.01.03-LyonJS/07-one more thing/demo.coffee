class Human
	
	console.log "Hello world !"	
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
	
	console.log "Hello world ! again"	
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
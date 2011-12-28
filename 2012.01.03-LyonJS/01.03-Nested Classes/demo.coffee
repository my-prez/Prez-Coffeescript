class Human
	
	class Hand
		constructor:(which_one)->
			@whichOne = which_one
		
		take:(something)->
			console.log "Taking #{something} with the #{@whichOne} hand"
	
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
		@leftHand = new Hand "left"
		@rightHand = new Hand "right"
		
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		
		
bob = new Human "Bob", "Morane"

bob.rightHand.take "a book"
bob.leftHand.take "a glass"



annotations = (what, member, value)->
	if not what.annotations then what.annotations = {}
	what.annotations[member] = value

class Human
	
	annotations @, "firstname", 
		{placeholder : "First Name", inputtype : "text"}
	annotations @, "lastname", 
		{placeholder : "Last Name", inputtype : "text"}
	
	constructor:(first, last)->
		#public variables
		@firstName = first
		@lastName = last
	
	hello:->
		console.log "Hello #{@firstName} #{@lastName}"
		

class HumanForm
	constructor:(k)->
		@template = ""
		for m of k.annotations
			@template += """
				<input 
					type='#{k.annotations[m].inputtype}' 
					placeholder='#{k.annotations[m].placeholder}'/>\n
			"""
			
F = new HumanForm Human
console.log F.template

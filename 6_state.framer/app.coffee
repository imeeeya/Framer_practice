layer1 = new Layer
layer1.states.state1 =
	x: 100
layer1.states.state2 = 
	x : 200
#Do state1 with animation
##layer1.animate("state1")

#Repeat state1 , state2
##layer1.onTap ->
##	layer1.stateCycle("state1", "state2")

#Do state1 without animation
##layer1.stateSwitch("state1")

#Do states sequencially
layer1.onTap ->
	layer1.states.next()
	
#Remove state
layer1.states.remove("state2")

layer2 = new Layer
	backgroundColor: "red"
	opacity: 0.5
layer2.states.state1 = 
	x : 400
#State options
layer2.states.animationOptions = 
	curve : "Spring(250,10,0)"
	time : 3

layer2.states.next()


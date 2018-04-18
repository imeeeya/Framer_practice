#Dragable !
layer1 = new Layer
layer1.draggable.enabled = true
#Only available vertical drag
layer1.draggable.horizontal = false
#Only availabe horizontal drag
#layer1.draggable.vertical = false

layer2 = new Layer
	backgroundColor: "red"
	opacity: 0.5
layer2.draggable.enabled = true
#if set speedX = 0 , then can not horizontal drag
layer2.draggable.speedX = 1
#Set drag available area
layer2.draggable.constraints = 
	x: 0
	y: 0
	width : 300
	height: 300
#remove bounce
layer2.draggable.bounce = false
#Only dragging horizontal or vertical
layer2.draggable.directionLock = true
layer2.onDragMove ->
	if layer2.draggable.direction is "right"
		layer2.html = "Right!!"
	else if layer2.draggable.direction is "left"
		layer2.html = "Left!!"
	else 
		layer2.html = "Where are you going?"

layer3 = new Layer
	backgroundColor: "blue", opacity: 0.5, width: 50, height: 50
	parent: layer2
layer3.draggable.enabled = true
#if propagateEvent not set "fasle", then layer2, 3 are moving together
layer3.draggable.propagateEvents = false

	
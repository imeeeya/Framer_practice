#make scroll component
scroll1 = new ScrollComponent
	width: Screen.width
	height: Screen.height
#	scrollHorizontal: false
	
#make scrollable layers
layer1 = new Layer
	width: 375, height : 375, backgroundColor: "yellow"
	parent: scroll1.content
	
layer2 = new Layer
	y : 377, width: 375, height: 375, backgroundColor: "blue"
	parent: scroll1.content

#Set margin
scroll1.contentInset = 
		top : 100, left : 0, right: 0, bottom: 100

#Set scroll speed
scroll1.speedY = 3

#Set start point
#scroll1.scrollY = 300

#Chage scroll point (similar to scrollX/scrollY)
scroll1.scrollPoint = 
	x: 100, y: 200

#View scroll velocity
scroll1.onScroll ->
		print scroll1.velocity

#scroll1.onMove ->
#		if scroll1.isDragging
#			layer2.html = "is dragging"
#		else	
#			layer2.html = "is not dragging"

## Indicate direction of the moving of screen
## It is opposit to scroll direction			
#scroll1.onScroll ->
#	if scroll1.direction is "down"
#		layer2.html = "up"
#	else if scroll1.direction is "up"
#		layer2.html = "down"
#	else if scroll1.direction is "left"
#		layer2.html = "right"
#	else if scroll1.direction is "right"
#		layer2.html = "left"
		
#scroll1.directionLock = true

#Angle will change along with scroll
scroll1.onScroll ->
		layer1.rotation = -scroll1.angle
scroll1.mouseWheelEnabled = true

layer1.draggable.enabled = true
#only move layer 1
layer1.draggable.propagateEvents = false
		


#Deactive the scroll
#scroll1.scroll = false
	
#Wrap scroll 
#layer3 = new Layer	
#	width: 375, height: 2000, backgroundColor: "green"
	
#scroll2 = ScrollComponent.wrap(layer3)

psd = Framer.Importer.load("imported/drag@1x")

psd.card.draggable = true

#Momentum option
psd.card.draggable.momentumOptions =
	friction: 8, tolernace : 0.1

#Momentum on/off
#psd.card.draggable.momentum = false

#Draggable area
psd.card.draggable.constraints = 
	x: 88, y: 250, width: 580, height: 900

#drag speed - default speed is 1
psd.card.draggable.speedX = 0.5

#More draggable - default is 0.5
psd.card.draggable.overdragScale = 0.7

#Drag bounce options. Similar with Spring
psd.card.draggable.bounceOptions =
	tension: 500, friction: 26, tolerance: 0




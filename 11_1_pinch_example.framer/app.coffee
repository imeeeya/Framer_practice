map = new Layer
	width: 5120, height: 5120
	midX : Screen.width/2, midY : Screen.height/2
	image: "images/map.png"
	
psd = Framer.Importer.load("imported/mapapp@1x")

#enable to dragging map
map.draggable.enabled = true
map.draggable.constraints = 
	x: -5120 + 750
	y: -5120 + 1334
	width:  5120*2 -750
	height: 5120*2 - 1334
	
#enable to pinch
map.pinchable.enabled = true

#Set pinch min/max scale
map.pinchable.minScale = 0.75
map.pinchable.maxScale = 2

#map.pinchable.rotateIncrements = 15

#If map is rotated, then compass also be rotated.
map.on Events.Pinch, ->
	psd.compass.rotation = map.rotation
	
	
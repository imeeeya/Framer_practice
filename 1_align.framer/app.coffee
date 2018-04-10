#좌표 - x, minX, midX, maxX 비교
layer1 = new Layer
	x: 100
	y: 100
	backgroundColor: "red"
	opacity: 0.3

layer2 = new Layer	
	minX: 100
	minY: 100
	backgroundColor: "blue"
	opacity: 0.3
	
layer3 = new Layer
	midX: 100
	midY: 100
	backgroundColor: "green"
	opacity: 0.3
	
layer4 = new Layer
	maxX: 100
	maxY: 100
	backgroundColor: "yellow"
	opacity: 0.5
	
#align practice
layer5 = new Layer
	x: Screen.width/2
	y: Screen.height/2
	backgroundColor: "violet"
	opacity: 0.3
	
layer6 = new Layer
	maxX: Screen.width
	maxY: Screen.height
	backgroundColor: "pink"
	opacity: 0.3

layer7 = new Layer	
	backgroundColor: "orange"
	opacity: 0.5
layer7.center()

layer8 = new Layer
	backgroundColor: "skyblue"
	opacity: 0.5
layer8.centerY()

	
	
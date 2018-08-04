# #Flow component
# 
# layer1 = new Layer
# 	size: Screen.size, backgroundColor: "pink"
# layer2 = new Layer
# 	size: Screen.size, backgroundColor: "skyblue"
# 
# flow1 = new FlowComponent
# flow1.showNext(layer1)
# 
# layer1.onClick ->
# 	flow1.showNext(layer2, animate:true)
# 
# layer2.onClick ->
# 	flow1.showPrevious()
# 	

# layer1 = new Layer
# 	size: Screen.size, backgroundColor: "pink"
# layer2 = new Layer	
# 	size : Screen.size, backgroundColor: "#007722"
# layer3 = new Layer	
# 	size : Screen.size, backgroundColor: "rgba(88,66,44,99)"
# layer4 = new Layer
# 	size : Screen.size, backgroundColor: "skyblue"
# layer5 = new Layer
# 	size:  Screen.size, backgroundColor: "#9567CD"
# 	
# flow1 = new FlowComponent
# flow1.showNext(layer1)
# 
# layer1.onClick ->
# 	flow1.showOverlayCenter(layer2)
# layer2.onClick ->
# 	flow1.showOverlayTop(layer3)
# layer3.onClick ->
# 	flow1.showOverlayLeft(layer4)
# layer4.onClick ->
# 	flow1.showOverlayRight(layer5)
# layer5.onClick ->
# 	flow1.showOverlayBottom(layer1)

scaleTransition = (nav, layer1, layer2, overlay) ->
	transition = 
		layer1 :
			show : scale : 0.8, opacity : 1
			hide : scale : 0.5, opacity : 0
		layer2 :
			show : scale : 0.8, opacity : 0.5
			hide : scale : 0.5, opacity : 0
		
layerA = new Layer
	size: Screen.size/2, backgroundColor: "skyblue"
layerB = new Layer	
	size : Screen.size, backgroundColor: "red", opacity: 0.6
	
flow1 = new FlowComponent
flow1.showNext(layerA)

layerA.onClick ->
		flow1.showOverlayCenter(layerB, scaleTransition)
layerB.onClick -> 
		flow1.showOverlayCenter(layerA, scaleTransition)
	
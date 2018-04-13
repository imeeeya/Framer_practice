#예제 따라해보기
navigationBar = new Layer
	width: 375, height: 50
	backgroundColor: "#61c0b5"
image.y = 50

icon = new Layer
	width: 50, height: 50, x: 300, y: 475
	backgroundColor: "#f4cc44"
	borderRadius: 50
	
whiteLayer = new Layer
	y :500, width : 375, height: 200, backgroundColor: "#ffffff"
whiteLayer.sendToBack()

navigationBar.html = "Apr 14. Practice"
navigationBar.style =
		"font-size" : "20px"
		"text-align" : "center"
		"line-height": "240%"

#animations
icon.animate
	x: 200, y : 10
	options: 
		#time : 0.5
		delay: 2
		repeat: 2
		curve: Bezier.easeOut
		time: 1.05

layer1 = new Layer
	width: 50, height : 50, backgroundColor: "skyblue", opacity: 0.8
	
animation1 = new Animation layer1, 
	x : 100, y : 100
	
animation2 = animation1.reverse()
animation1.start()
Utils.delay 1, ->
	animation2.start()



		

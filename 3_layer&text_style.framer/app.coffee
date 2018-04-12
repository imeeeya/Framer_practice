#ScreenFrame : 절대좌표출력
layer1 = new Layer
	x:100
layer2 = new Layer
	#layer2가 layer1에 들어있으면 좌표기준은 layer1 부터 상대적으로 표시
	x: 100, parent: layer1
#print layer2.screenFrame

#Layer 크기
layer3 = new Layer
layer3.width = 500
layer3.height = 250
layer3.backgroundColor = "red"
layer3.opacity = 0.5

layer4 = new Layer
layer4.size = { height: 300, width: 200 }
layer4.backgroundColor = "yellow"
layer4.scale = 2
layer4.opacity = 0.5

layer5 = new Layer
	backgroundColor: "skyblue"
	opacity: 0.7
	rotation: 45
	x : 250
	y : 300
	
layer6 = new Layer
	backgroundColor: "green"
	opacity: 0.5
	rotationX: 60
	parent : layer4
	y: 200
	name: "green layer"
layer4.clip = true
#print layer6.name

layer7 = new Layer (backgroundColor: "pink", y : 350, x: 150)
layer7.opacity = 0.3
layer7.rotation = 30
layer5.bringToFront()

layer8 = new Layer
	width: 100
	height: 150
	backgroundColor: "#00ff00"
	opacity: 0.4
	x : 400
	y : 500
	
#html & Style
layer8.html = "<br>Imee</br>"
layer7.style =
	"outline" : "1px solid red"
	"padding" : "10px"
layer3.brightness = 150
layer4.hueRotate = 200
layer4.saturate = 150
layer8.shadowX = 10
layer8.shadowY = 10
layer8.shadowBlur = 4
#layer8.shadowColor = "00ff00"

#Text style
text = new TextLayer
	fontSize: 50
	fontWeight: 100
	text : "Hi, there :D"
	#여백 - padding
	padding: top: 10
	wordSpacing: 5
	letterSpacing: 5
	#uppercase , lowercase, capitalize
	textTransform: "capitalize"
	#]textDecoration: "underline"
	shadowY : 2
	shadowX : 2
	
	


	

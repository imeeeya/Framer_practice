photo = new Layer
	width: 750
	height: 750
	y:100
	image: "images/photo.png"
	
	
#Slider for control sepia 
sepiaSlider = new SliderComponent
	x: 100, y: 1000, width: Screen.width*0.75
sepiaSlider.knob.size = 40
sepiaSlider.knob.backgroundColor = "#ff5566"
sepiaSlider.fill.backgroundColor = sepiaSlider.knob.backgroundColor
sepiaSlider.fill.opacity = 0.6

sepiaSlider.on "change:value", ->
	photo.sepia = sepiaSlider.value*100


#Slider for control blur of photo	
blurSlider = new SliderComponent
	x : sepiaSlider.x, y: sepiaSlider.y+100, width: sepiaSlider.width

blurSlider.knob.size = sepiaSlider.knob.size
blurSlider.knob.backgroundColor = "77ff99"
blurSlider.fill.backgroundColor = blurSlider.knob.backgroundColor
blurSlider.fill.opacity = 0.6

blurSlider.on "change:value", ->
	photo.blur = blurSlider.value*10


#Slider for contorl borderRounding of photo
roundSlider = new SliderComponent
	x : sepiaSlider.x, y:sepiaSlider.y + 200, width: sepiaSlider.width
#375 is the value of making round image
	min: 0, max: 375
roundSlider.knob.size = sepiaSlider.knob.size
roundSlider.knob.backgroundColor = "#ffddaa"
#Prevent to sliding 
roundSlider.knob.draggable.momentum = false
roundSlider.fill.backgroundColor = roundSlider.knob.backgroundColor
roundSlider.fill.opacity = 0.6

roundSlider.on "change:value", ->
	photo.borderRadius = roundSlider.value
	

	
	
	
	
	

	
	
	
	


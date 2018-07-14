# slider1 = new SliderComponent
# slider1.center()
# slider1.knob.shadowColor = "#888888"
# slider1.knob.shadowY = 20
# slider1.knob.shadowBlur = 10
# slider1.knobSize = 50
# slider1.knob.borderRadius = 6
# slider1.knob.backgroundColor = "yellow"
# slider1.knob.draggable.momentum = false
# 

slider2 = new SliderComponent
slider2.center()
slider2.fill.backgroundColor = "red"

slider3 = new SliderComponent
	x: 100 , y: 100

slider3.min = -10
slider3.max = 10
# slider3.on "change:value" , ->
# # 	print slider3.value
# 	print slider3.pointForValue(slider3.value)
# 	print slider3.valueForPoint(slider3.value)
slider3.animateToValue(3, {curve : "ease"})

slider4 = new RangeSliderComponent
	x: 100, y: 600, min:0, max: 10
	minValue: 2, maxValue: 7
	knob : 50

	
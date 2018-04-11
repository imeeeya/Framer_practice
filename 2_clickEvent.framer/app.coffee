flow = new FlowComponent
flow.showNext(select_box_1)
Oval_select_1.backgroundColor = "black"
Yahaha.opacity = 0
check_1.opacity = 0
Oval_2.opacity = 0

Select_2.onClick (event, layer) ->
	Oval_select_2.backgroundColor = "black"
	Yahaha.opacity = 1
	check_1.opacity = 1
	Oval_select_1.backgroundColor = "gray"
	hahaha.opacity = 0
	check_2.opacity = 0

Select_1.onClick (event, layer) ->
	Oval_select_1.backgroundColor = "black"
	hahaha.opacity = 1
	check_2.opacity = 1
	Oval_select_2.backgroundColor = "gray"
	Yahaha.opacity = 0
	check_1.opacity = 0

check_2.onClick (event, layer) ->
	flow.showOverlayCenter(wow)
	Wow_.animate
		x: Screen.width/2 - 30
		y: Screen.height/2 - 100
		scale:2
		options:
			time: 1
			curve: Bezier.ease
	
check_1.onClick (event, layer) ->
	flow.showOverlayCenter(wow)
	Wow_.animate
		x: Screen.width/2 - 30
		y: Screen.height/2 - 100
		scale:2
		options:
			time: 1
			curve: Bezier.ease
	
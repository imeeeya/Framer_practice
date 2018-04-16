psd = Framer.Importer.load("imported/states@1x")
#on/off states
psd.x.states = 
	on : rotation : 0, opacity: 1
	off : rotation: -45, opacity: 0
#psd.x.states.switch("off")

#Add animation
psd.x.states.animationOptions =
	curve : "spring(300,20,0)"

#next("on", "off") or next();
psd.photo.onTap ->
	psd.x.states.next("on", "off");
	
psd.info1.states = 
	default : opacity : 1
	state2 : opacity : 0
	animationOptions : time : 0.5
	
psd.info1.onTap ->
	psd.info1.states.next()
	
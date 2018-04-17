# psd file import
psd = Framer.Importer.load("imported/animation@1x")
# defalult setting
psd.bg.scale = 1.2
psd.bg.opacity = 0
psd.logo.scale = 0.5
psd.logo.opacity = 0
psd.logo.midY = 667
psd.text_welcome.opacity = 0
psd.ui_btn.y = 1100
psd.ui_btn.opacity = 0
#background animation
psd.bg.animate
	scale : 1, opacity: 1
#logo appeard
psd.logo.animate	
	scale: 1, opacity: 1
	options: 	
		time: 1
		curve: "Spring(damping:0.40)"
#logo move
psd.logo.animate
	y : 216
	options: 	
		delay: 1.5
		curve: "Spring(damping: 0.66)"

#animation1 = new Animation
#make function 'animation1'
animation1 = ->
	psd.text_welcome.animate
		opacity: 1
		options :
			delay : 2
	psd.ui_btn.animate
		y: 844, opacity: 1
		options: 
			curve: "ease"
			time: 0.5
			delay: 1.5
#Start function	
animation1();

psd.text_welcome.states =
	on : opacity : 1
	off : opacity : 0
	
psd.text_welcome.onTap ->
	psd.text_welcome.states.next("on", "off")
	
psd.text_welcome.states.animationOptions =
	curve : "spring(300,20,0)"

	
	



		
	
	
	
	
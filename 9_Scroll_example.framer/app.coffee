# Import file "scroll"
psd = Framer.Importer.load("imported/scroll@1x")

#New scroll component for vertical scrolling
scroll1 = new ScrollComponent
	width: Screen.width, height: Screen.height, parent: psd.page
	
#include contents in scroll1
psd.scr1.parent = scroll1.content
scroll1.scrollHorizontal = false

#include contents in scroll2
#make scroll
scroll2 = ScrollComponent.wrap(psd.scr2)
scroll2.parent = psd.scr1
#that scroll component are for horizontal scrolling
scroll2.scrollVertical = false
scroll2.contentInset = 
	left: 50, right: 50
#prevent to other contents scrolling during scroll2 operating
scroll2.content.draggable.propagateEvents = false

scroll3 = ScrollComponent.wrap(psd.scr3)
scroll3.parent = psd.scr1
scroll3.scrollVertical = false
scroll3.contentInset = left: 50
scroll3.content.draggable.propagateEvents = false
scroll1.contentInset = bottom: 150




testPage = new PageComponent
	width : 375, height: 667, scrollVertical : false

# page1 = new Layer
# 	backgroundColor: "blue", width: 375, height: 667
# page2 = new Layer	
# 	backgroundColor: "yellow",width: 375, height: 667
# 
# #add page using "addPage"
# testPage.addPage( page1 )
# testPage.addPage( page2, "right")

# #add page by using "parents"
# page3 = new Layer	
# 	width: 375, height: 667, backgroundColor: "pink"
# 	parent: testPage.content
# 
# page4 = new Layer	
# #Must define x 
# 	x: 375, width: 375, height: 667, backgroundColor: "skyblue"
# 	parent: testPage.content
	
#make multiple pages using "for"
pageItems = []
for i in [0...5]
	page = new Layer
		width: 375, height: 667
		backgroundColor: Utils.randomColor()
		x : i*375
		parent: testPage.content
		pageItems.push(page)
		

#Page event - Chage : curruent page
testPage.on "change:currentPage",->
	print testPage.horizontalPageIndex(testPage.currentPage)
	testPage.previousPage.animate
		scale:0.7, opacity: 0.5
		options: 	
			curve: "spring"
	testPage.currentPage.animate
		scale: 1, opacity: 1
		options: 	
			curve: "spring"

#move to page1	
testPage.snapToPage(pageItems[2])

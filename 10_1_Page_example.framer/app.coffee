psd = Framer.Importer.load("imported/page@1x")

#Vertical page 
thePage = new PageComponent
	width: Screen.width, height: Screen.height, scrollHorizontal: false
	index : 0, directionLock: true

psd.page1.parent = thePage.content
psd.page2.parent = thePage.content
psd.page3.parent = thePage.content

#Horizontal page for changing cover 
theCover = new PageComponent
	width: Screen.width, height: Screen.height, scrollVertical: false
	parent : thePage.content
		
page1arr = [psd.page1_1, psd.page1_2, psd.page1_3, psd.page1_4]

#each cover images are included in "theCover" page component
for i in page1arr
	i.parent = theCover.content
	
thePage.content.draggable.overScale = 0
theCover.content.draggable.overScale = 0.1

psd.indicator.parent = theCover

indicatorArr = [psd.indicator1, psd.indicator2, psd.indicator3, psd.indicator4]

#declare Check page function
#For giving animation at indicator
checkPage = ->
	for i in indicatorArr
		i.opacity = 0.2
	if theCover.currentPage is psd.page1_1
		psd.indicator1.opacity = 0.75
	else if theCover.currentPage is psd.page1_2
		psd.indicator2.opacity = 0.75
	else if theCover.currentPage is psd.page1_3
		psd.indicator3.opacity = 0.75
	else if theCover.currentPage is psd.page1_4
		psd.indicator4.opacity = 0.75
		
#Inplment "checkPage" if cover were change
theCover.on "change:currentPage", ->
	checkPage()
	#print theCover.horizontalPageIndex(theCover.currentPage)

checkPage()
	

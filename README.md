# Framer 연습하기

1. Align types

2. Trying to make click event

3. Practice layer style 
 - including text style practice

4. Layout example and First animations

5. Animation example

6. State
 - state example : on/off states

7. Drag practice
 - draggable.enable = true/false
 - draggable.horizontal = true/false
 - draggable.vertical = true/false
 - draggable.speedX = NUMBER
 - draggable.constraints = set width, height, x, y
 - draggable.bounce = true/false
 - draggable.directionLock = true/false
 - onDrag -> if ~ is, else if ~ is
 - draggable.propagateEvents = true/false

8. Drag example
 - draggable.bounceOption = Tension/Friction/Tolerance
 - draggable.momentumOption = Friction;/Tolerance

9. Scroll
 - include scroll ==> layer.scrollName.content
 - scrollName.speedX : Number
 - scrollName.scrollPoint : x, y
 - scrollName.onScroll ->
 - print scrillName.velocity
 - scrollName.onMoving
 - layerName.html = "text"
 - scrollName.direction 
	if scrollName.direction is "down"
 - scrollName.directionLock = true / false
 - layerName.rotation = -scroll.angle

10. Scroll example & page component
 - Add scroll 
	==> scrArea.parent = scrollName.content
	==> scrollName = ScrollComponet.wrap(scrArea)
 - scroll.content.draggable.propagateEvents
 - Add page
	==> page.addPage(pageName, "direction") 
	==> PageName parent:PageCoponemtName.content
		=> Must define x or y 
 - repeat(for)
	==> x: i * horizontal size 
 - event 	
	==> "chage: currentPage"
	==> mypage.on "change:currentPage" , ->
 	==> mypage.previousPage.animate
 - move to page
	==> pageComponentName.snapToPage(pageName)

10_1. Page example
 - Declare & Implement the function
 - for..in, if/else if ...
 - Framer is not good at finding a typing error T.T


11. pinch
 - Control scale or rotate object by pinching
 - Scale
	==> pinchable.scaleIncrements
	==> pinchable.scaleFactor
	==> pincable.minScale / maxScale
 - Rotation	
	==> pinchable.rotate 
	==> pinchable.rotateIncrements
	==> pinchable.rotateFactor
 - etc
	==> pinchable.centerOrigin
	==> pinchable.threshold


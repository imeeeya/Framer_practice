layer1 = new Layer
layer1.pinchable.enabled = true
#If pinch distans is over 100, then keep out pinch
#layer1.pinchable.threshold = 100

layer1.pinchable.centerOrigin = false

#prevent to change layer size
#layer1.pinchable.scale = false
layer1.pinchable.scaleIncrements = 0.1

layer1.pinchable.minScale = 0.5
layer1.pinchable.maxScale = 2

#Management scale changing speed
layer1.pinchable.scaleFactor = 2

#Management rotate option
#layer1.pinchable.rotate = false

#Rotate angles 
layer1.pinchable.rotateIncrements = 15
#Control rotation speed
layer1.pinchable.rotateFactor = 20



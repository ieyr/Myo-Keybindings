scriptId = 'com.buildncode.codeday.basicfirstrun'

recGesture = false

function onPoseEdge(pose, edge)
	if(pose == "pinkyToThumb")
	if pose == "fist" and edge == "on" then
    	myo.keyboard()
    end
end

function onPeriodic()
	myo.controlMouse(true)
	myo.debug(myo.mouseControlEnabled())
end	

function onForegroundWindowChange(app, title)
   return true
end
function activeAppName()
    return "Output Everything"
end
function onActiveChange(isActive)
    myo.debug("onActiveChange")
end
function commandTab()

end
function rightTab()

end
function leftTab()
	
end

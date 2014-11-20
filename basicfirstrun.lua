scriptId = 'com.buildncode.codeday.basicfirstrun'

recGesture = false
inTabMenu = false

function onPoseEdge(pose, edge)
	if pose == "pinkyToThumb" and edge == "on" then
		if !recGesture then
			recGesture = true
		elseif recGesture then
			recGesture = false
		end
	end
	elseif pose == "fist" and edge == "on" then
    	-- i dunno bruh
    elseif pose == "waveIn" and edge == "on" then
    	leftTab()
    elseif pose == "waveOut" and edge == "on" then
    	rightTab()
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
	if !inTabMenu then
		myo.keyboard("left_command", "down")
		myo.keyboard("tab", "press")
		inTabMenu = true
	elseif inTabMenu then
		myo.keyboard("left_command", "up")
		myo.keyboard("tab", "down")
		inTabMenu = false
	end
end
function rightTab()
	if inTabMenu then
		myo.keyboard("right_arrow")
	end
end
function leftTab()
	if inTabMenu then
		myo.keyboard("right_arrow")
	end
end

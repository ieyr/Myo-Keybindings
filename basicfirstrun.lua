scriptId = 'com.rohan.myokeybindings'

recGesture = false
inTabMenu = false
function onPoseEdge(pose, edge)
	myo.debug("went in")
	myo.debug(pose)
	if pose == "pinkyToThumb" and edge == "on" then
		myo.debug("pinkyToThumb1")
		if recGesture==false then
			recGesture = true
		elseif recGesture then
			recGesture = false
		end
	end
	if recGesture then
		if pose == "fist" and edge == "on" then
	    	-- i dunno bruh
	    	myo.debug("fist1")
	    elseif pose == "fingersSpread" and edge == "on" then
	    	myo.debug("fingersSpread1")
	    	commandTab()
	    elseif pose == "waveIn" and edge == "on" then
	    	myo.debug("waveIn1")
	    	leftTab()
	    elseif pose == "waveOut" and edge == "on" then
	    	myo.debug("waveOut1")
	    	rightTab()
	    end
    end
end

function onPeriodic()
	--myo.controlMouse(true)
	--myo.debug(myo.mouseControlEnabled())
end	

function onForegroundWindowChange(app, title)
   return true
end
function activeAppName()
    return "Output Everything"
end
function onActiveChange(isActive)
    --myo.debug("onActiveChange")
end
function commandTab()
	if inTabMenu==false then
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

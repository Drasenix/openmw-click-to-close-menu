local ui = require('openmw.ui')
local UI = require('openmw.interfaces').UI

local selfObject = self

local function onMouseButtonPress(button)
   local currentMode = UI.getMode()
   if button == 3 and currentMode ~= "Dialogue" then
      UI.setMode()
   end      
end

return {
   engineHandlers = {
      onMouseButtonPress = onMouseButtonPress
   }
}

local ui = require('openmw.ui')
local UI = require('openmw.interfaces').UI


local selfObject = self

local function onMouseButtonPress(button)
   if button == 3 then
      UI.setMode()
   end      
end

return {
   engineHandlers = {
      onMouseButtonPress = onMouseButtonPress
   }
}

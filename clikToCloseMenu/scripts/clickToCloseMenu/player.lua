local core = require('openmw.core')
local UI = require('openmw.interfaces').UI
local configPlayer = require('scripts.clickToCloseMenu.config.player')
local l10n = core.l10n('clickToCloseMenu')


local selfObject = self
local function onMouseButtonPress(button)
   local clickNameForPreparingWeapon = l10n(configPlayer.options.s_Click)
   local clickIdEquivalent
   
   if clickNameForPreparingWeapon == "Left" then
      clickIdEquivalent = 1
   elseif clickNameForPreparingWeapon == "Middle" then
      clickIdEquivalent = 2
   elseif clickNameForPreparingWeapon == "Right" then
      clickIdEquivalent = 3
   else
      return
   end

   local currentMode = UI.getMode()
   if button == clickIdEquivalent and currentMode ~= "Dialogue" then
      UI.setMode()
   end      
end

return {
   engineHandlers = {
      onMouseButtonPress = onMouseButtonPress
   }
}

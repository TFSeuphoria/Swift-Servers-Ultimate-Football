-- Base URL of your repository
local baseUrl = "https://raw.githubusercontent.com/TFSeuphoria/Swift-Servers-Ultimate-Football/main/"

-- Load gui.lua (this could be any script you want to load)
local guiCode = game:HttpGet(baseUrl .. "gui.lua")
local GuiLibrary = loadstring(guiCode)()

-- Optionally, load other scripts (e.g., another-script.lua)
-- local otherScriptCode = game:HttpGet(baseUrl .. "other-script.lua")
-- loadstring(otherScriptCode)()

-- Now you can use the functions or variables defined in gui.lua
GuiLibrary.CreateUI()  -- Example usage if CreateUI exists in gui.lua

-- Return GuiLibrary or any other values you want to expose
return GuiLibrary

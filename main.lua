-- Base URL of your repository
local baseUrl = "https://raw.githubusercontent.com/TFSeuphoria/Swift-Servers-Ultimate-Football/main/"

-- -- main.lua

local HttpService = game:GetService("HttpService")

-- Function to get and run the gui.lua script
local function loadGUI()
    local url = "https://your-server.com/gui.lua"  -- Replace with the actual URL
    local response = HttpService:GetAsync(url)    -- Fetch the gui.lua content

    -- You can use loadstring() to execute the Lua code fetched
    local success, errorMsg = pcall(function()
        loadstring(response)()  -- Executes the Lua script
    end)

    if not success then
        warn("Failed to execute gui.lua: " .. errorMsg)
    end
end

-- Call the function to load and run the GUI
loadGUI()

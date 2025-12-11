wait(0.5)

local screen = assert(GetPartFromPort(1, "TouchScreen"), "ERROR: TouchScreen not found on Port 1.")
local currentPage = "MainMenu" -- Start on the main menu

-- Function to handle button clicks
local function handleButtonClick(player, buttonName)
    if buttonName == "GoToPower" then
        currentPage = "PowerSettings"
        drawUI()
    elseif buttonName == "GoToMain" then
        currentPage = "MainMenu"
        drawUI()
    elseif buttonName == "ToggleShields" then
        print("Toggling shields...")
    end
end

-- Connect the event handler
screen:Connect("ButtonClick", handleButtonClick)

-- Function to draw all UI elements
local function drawUI()
    screen:Clear()

    if currentPage == "MainMenu" then
        screen:CreateElement("TextLabel", { Position = UDim2.new(0.5, -50, 0, 10), Size = UDim2.new(0, 100, 0, 20), Text = "Main Menu", Name = "TitleLabel" })
        screen:CreateElement("TextButton", { Position = UDim2.new(0, 10, 0, 40), Size = UDim2.new(0, 150, 0, 30), Text = "Power Settings ->", Name = "GoToPower" })
        
    elseif currentPage == "PowerSettings" then
        screen:CreateElement("TextLabel", { Position = UDim2.new(0.5, -50, 0, 10), Size = UDim2.new(0, 100, 0, 20), Text = "Power Management", Name = "TitleLabel" })
        screen:CreateElement("TextButton", { Position = UDim2.new(0, 10, 0, 40), Size = UDim2.new(0, 150, 0, 30), Text = "Toggle Shields", Name = "ToggleShields" })
        screen:CreateElement("TextButton", { Position = UDim2.new(0, 10, 0, 80), Size = UDim2.new(0, 150, 0, 30), Text = "<- Back", Name = "GoToMain" })
    end
end

-- Initial draw call
drawUI()

-- Keep the script running forever
while true do
    wait(1) 
end

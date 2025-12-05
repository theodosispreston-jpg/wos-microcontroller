local touchscreen = GetPartFromPort(1, "TouchScreen")
TextLabel()

local function TextLabel()
touchscreen:CreateElement("TextLabel", {
        Text = "Missile Status: ";
        TextScaled = true;
        Size = {X=1, Y=1}; -- Fill the screen
        Position = {X=0, Y=0};
    })
end

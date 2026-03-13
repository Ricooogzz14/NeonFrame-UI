local NeonFrame = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ricooogzz14/NeonFrame-UI/refs/heads/main/UI.lua"))()

--/ CREATE WINDOW
local Window = NeonFrame.CreateWindow({
    Title = "Example Hub",
    Size = UDim2.new(0, 700, 0, 500),
    ToggleKey = Enum.KeyCode.RightControl
})

--/ CREATE A NOTIFICATION
NeonFrame.Notify({
    Title = "Hello",
    Content = "This is a notification",
    Duration = 5,
    Type = "Info",
    ButtonText = "OK",
    Callback = function()
        print("Notification closed!")
    end
})

--/ CREATE TAB
local Tab = Window.CreateTab({
    Name = "Tab"
})

--/ CREATE SECTION
Tab.CreateSection({
    Name = "Section"
})

--/ CREATE A BUTTON
Tab.CreateButton({
    Name = "Button",
    Callback = function()
        print("Button clicked!")
    end
})

--/ CREATE A TOGGLE
Tab.CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(state)
        print("God Mode:", state)
    end
})

--/ CREATE A SLIDER
Tab.CreateSlider({
    Name = "Slider",
    Min = 0,
    Max = 200,
    Default = 16,
    Rounding = 0,
    Callback = function(value)
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = value
        end
    end
})

--/ CREATE A DROPDOWN
Tab.CreateDropdown({
    Name = "Dropdown",
    Options = {"A", "B", "C"},
    Default = "A",
    Callback = function(option)
        print("Selected Team:", option)
    end
})

--/ CREATE A TEXTBOX
Tab.CreateTextBox({
    Name = "Textbox",
    Placeholder = "Enter name",
    Default = "",
    Callback = function(text, enterPressed)
        print("Text entered:", text, "Enter pressed:", enterPressed)
    end
})

--/ CREATE A LABEL
Tab.CreateLabel({
    Text = "This is a Label"
})

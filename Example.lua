local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Breakhq-0/Break-UI-Library/refs/heads/main/Break%20UI%20Library.lua"))()

local Window = library:Create({
   Name = "Break UI Library" ,
   Key = Enum.KeyCode.RightShift, --open/close key 
   Colour = Color3.fromRGB(255, 139, 7)
})

local Tab = Window:CreateTab({
   Name = "Aiming",  
})

local Tab2 = Window:CreateTab({
    Name = "Visuals",
})


local Section = Tab:CreateSection({})

local Section2 = Tab2:CreateSection({})

local TextBox = Section:TextBox({
   callback = function(text)
       print(text)
   end,
})

local Slider = Section:Slider({
   min = 16, 
   max = 100,
   default = 16,
   callback = function(numbervalue)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numbervalue
   end,
})

local Toggle = Section:Toggle({
    Name = "Toggle",
    callback = function(boolvalue)
        print(boolvalue)
    end,
})

local Button = Section:Button({
    Name = "Button",
    callback = function()
       print('clicked')
    end,
})

Button:SetCallback(function()
    print('changed clicked')
end)

Button:SetText('New Text')


TextBox:SetCallback(function()
	local text = TextBox:GetText()
    print("new function"..text)
end)


Toggle:Toggle(true)

local SliderValue = Slider:GetValue()

Slider:SetValue(SliderValue)

--[[
    FluentUI Library
    Credits: https://docs.fluent-pl.us/
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/edu-syahruldr/FluentUI/refs/heads/main/main.lua"))()

local Window = Library:CreateWindow({
    Title = "FluentUI",
    SubTitle = "Example",
    Size = UDim2.fromOffset(700, 550),
    TabWidth = 180,
    Acrylic = true,
    Theme = "Dark",
    Search = true,
    MinimizeKey = Enum.KeyCode.LeftControl,
    UserInfo = true,
    UserInfoTitle = game.Players.LocalPlayer.Name,
    UserInfoSubtitle = "User",
    UserInfoSubtitleColor = Color3.fromRGB(255, 215, 0),
    UserInfoTop = false
})

local Tabs = {
    Elements = Window:AddTab({ Title = "Elements", Icon = "layout-grid" }),
    Inputs = Window:AddTab({ Title = "Inputs", Icon = "text-cursor" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Elements Tab
local ButtonSection = Tabs.Elements:AddSection("Buttons")

ButtonSection:AddButton({
    Title = "Button",
    Description = "Example button",
    Callback = function()
        print("Button clicked")
    end
})

ButtonSection:AddButton({
    Title = "Another Button",
    Callback = function()
        print("Another button clicked")
    end
})

local ToggleSection = Tabs.Elements:AddSection("Toggles")

ToggleSection:AddToggle("Toggle1", {
    Title = "Toggle",
    Description = "Example toggle",
    Default = false,
    Callback = function(Value)
        print("Toggle:", Value)
    end
})

ToggleSection:AddToggle("Toggle2", {
    Title = "Toggle with Default",
    Default = true,
    Callback = function(Value)
        print("Toggle 2:", Value)
    end
})

local SliderSection = Tabs.Elements:AddSection("Sliders")

SliderSection:AddSlider("Slider1", {
    Title = "Slider",
    Description = "Example slider",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Callback = function(Value)
        print("Slider:", Value)
    end
})

SliderSection:AddSlider("Slider2", {
    Title = "Decimal Slider",
    Default = 1.5,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Callback = function(Value)
        print("Decimal:", Value)
    end
})

local ParagraphSection = Tabs.Elements:AddSection("Paragraphs")

local Paragraph = ParagraphSection:AddParagraph({
    Title = "Paragraph",
    Content = "This is example paragraph content.",
    Icon = "info"
})

ParagraphSection:AddButton({
    Title = "Update Paragraph",
    Callback = function()
        Paragraph:SetTitle("Updated Title")
        Paragraph:SetDesc("Updated content at " .. os.date("%H:%M:%S"))
    end
})

-- Inputs Tab
local DropdownSection = Tabs.Inputs:AddSection("Dropdowns")

DropdownSection:AddDropdown("Dropdown1", {
    Title = "Dropdown",
    Description = "Example dropdown",
    Values = {"Option 1", "Option 2", "Option 3"},
    Default = 1,
    Callback = function(Value)
        print("Selected:", Value)
    end
})

DropdownSection:AddDropdown("Dropdown2", {
    Title = "Multi-Select Dropdown",
    Values = {"Item A", "Item B", "Item C", "Item D"},
    Default = {},
    Multi = true,
    Callback = function(Value)
        print("Multi:", Value)
    end
})

local InputSection = Tabs.Inputs:AddSection("Text Inputs")

InputSection:AddInput("Input1", {
    Title = "Text Input",
    Description = "Example text input",
    Default = "",
    Placeholder = "Type here...",
    Callback = function(Value)
        print("Input:", Value)
    end
})

InputSection:AddInput("Input2", {
    Title = "Numeric Input",
    Default = "100",
    Numeric = true,
    Callback = function(Value)
        print("Number:", Value)
    end
})

local KeybindSection = Tabs.Inputs:AddSection("Keybinds")

KeybindSection:AddKeybind("Keybind1", {
    Title = "Keybind",
    Description = "Example keybind",
    Default = "E",
    Mode = "Toggle",
    Callback = function()
        print("Keybind pressed")
    end
})

KeybindSection:AddKeybind("Keybind2", {
    Title = "Hold Keybind",
    Default = "F",
    Mode = "Hold",
    Callback = function()
        print("Holding key")
    end
})

local ColorSection = Tabs.Inputs:AddSection("Colors")

ColorSection:AddColorPicker("Color1", {
    Title = "Color Picker",
    Description = "Example color picker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        print("Color:", Value)
    end
})

ColorSection:AddColorPicker("Color2", {
    Title = "Another Color",
    Default = Color3.fromRGB(0, 255, 0),
    Callback = function(Value)
        print("Color 2:", Value)
    end
})

-- Settings Tab
local ThemeSection = Tabs.Settings:AddSection("Theme")

ThemeSection:AddDropdown("Theme", {
    Title = "Theme",
    Values = Library.Themes,
    Default = 1,
    Callback = function(Value)
        Library:SetTheme(Value)
    end
})

ThemeSection:AddToggle("Acrylic", {
    Title = "Acrylic Effect",
    Default = true,
    Callback = function(Value)
        Library.Acrylic = Value
    end
})

local InfoSection = Tabs.Settings:AddSection("Info")

InfoSection:AddParagraph({
    Title = "Version",
    Content = "FluentUI v1.2"
})

InfoSection:AddParagraph({
    Title = "Credits",
    Content = "https://docs.fluent-pl.us/"
})

InfoSection:AddButton({
    Title = "Destroy",
    Callback = function()
        Library:Destroy()
    end
})

Library:CreateMinimizer({
    Icon = "menu",
    Acrylic = true,
    Corner = 14,
    Draggable = true
})

Window:SelectTab(1)

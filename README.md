# FluentUI Library

## Credits
This library is based on [Fluent Plus](https://docs.fluent-pl.us/), A modified version of [Fluent](https://github.com/dawid-scripts/Fluent) with many additions.

## Installation

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/edu-syahruldr/FluentUI/refs/heads/main/main.lua"))()
```

## Quick Start

```lua
local Window = Library:CreateWindow({
    Title = "My Application",
    SubTitle = "Version 1.0",
    Size = UDim2.fromOffset(700, 550),
    TabWidth = 180,
    Acrylic = true,
    Theme = "Dark",
    Search = true,
    MinimizeKey = Enum.KeyCode.LeftControl,
    UserInfo = true,
    UserInfoTitle = game.Players.LocalPlayer.Name,
    UserInfoSubtitle = "User",
    UserInfoTop = false
})

local Tab = Window:AddTab({ Title = "Main", Icon = "home" })
local Section = Tab:AddSection("Features")
```

## Window Options

| Option | Type | Description |
|--------|------|-------------|
| Title | string | Window title |
| SubTitle | string | Window subtitle |
| Size | UDim2 | Window dimensions |
| TabWidth | number | Width of the tab sidebar |
| Acrylic | boolean | Enable blur effect |
| Theme | string | Theme name (see Themes section) |
| Search | boolean | Enable element search |
| MinimizeKey | KeyCode | Key to minimize window |
| UserInfo | boolean | Show user information panel |
| UserInfoTitle | string | User info title text |
| UserInfoSubtitle | string | User info subtitle text |
| UserInfoSubtitleColor | Color3 | Subtitle text color |
| UserInfoTop | boolean | Position user info at top |

## Tabs

```lua
local Tab = Window:AddTab({
    Title = "Tab Name",
    Icon = "settings"
})
```

## Sections

```lua
local Section = Tab:AddSection("Section Title", "optional-icon")
```

## Elements

### Button

```lua
Section:AddButton({
    Title = "Click Me",
    Description = "Button description",
    Callback = function()
        print("Button clicked")
    end
})
```

### Toggle

```lua
Section:AddToggle("ToggleId", {
    Title = "Enable Feature",
    Description = "Toggle description",
    Default = false,
    Callback = function(Value)
        print("Toggle:", Value)
    end
})
```

### Slider

```lua
Section:AddSlider("SliderId", {
    Title = "Speed",
    Description = "Adjust speed value",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        print("Slider:", Value)
    end
})
```

### Dropdown

```lua
Section:AddDropdown("DropdownId", {
    Title = "Select Option",
    Description = "Choose an option",
    Values = {"Option 1", "Option 2", "Option 3"},
    Default = 1,
    Multi = false,
    Callback = function(Value)
        print("Selected:", Value)
    end
})
```

### Input

```lua
Section:AddInput("InputId", {
    Title = "Enter Text",
    Description = "Type something",
    Default = "",
    Placeholder = "Type here...",
    Numeric = false,
    Callback = function(Value)
        print("Input:", Value)
    end
})
```

### Keybind

```lua
Section:AddKeybind("KeybindId", {
    Title = "Toggle Key",
    Description = "Press to set keybind",
    Default = "E",
    Mode = "Toggle",
    Callback = function(Value)
        print("Keybind pressed")
    end
})
```

### ColorPicker

```lua
Section:AddColorPicker("ColorId", {
    Title = "Pick Color",
    Description = "Select a color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        print("Color:", Value)
    end
})
```

### Paragraph

```lua
local Paragraph = Section:AddParagraph({
    Title = "Information",
    Content = "This is a paragraph with detailed information.",
    Icon = "info",
    Visible = true
})

-- Update methods
Paragraph:SetTitle("New Title")
Paragraph:SetDesc("New content text")
```

## Icon System

The library supports multiple icon packs that load on-demand:

### Supported Icon Packs

- `lucide` (default)
- `solar`
- `craft`
- `geist`
- `sfsymbols`

### Usage

```lua
-- Direct icon name (uses default pack)
Icon = "home"
Icon = "settings"
Icon = "biohazard"

-- Using Library:GetIcon()
local iconAsset = Library:GetIcon("home")
local iconAsset = Library:GetIcon("home", "solar")  -- Specific pack

-- Change default pack
Library:SetDefaultIconPack("solar")
```

### Icon Resolution Order

1. Check loaded icon pack from URL
2. Fallback to default pack if different
3. Fallback to built-in Icons table with "lucide-" prefix

## Themes

Available themes:

- Dark
- Darker
- AMOLED
- Light
- Balloon
- SoftCream
- Aqua
- Amethyst
- Rose
- Midnight
- Forest
- Sunset
- Ocean
- Emerald
- Sapphire
- Cloud
- Grape
- Bloody
- Arctic

## Minimizer

Create a floating minimize button:

```lua
Library:CreateMinimizer({
    Icon = "menu",
    Acrylic = true,
    Corner = 14,
    Transparency = 0,
    Draggable = true
})
```

## Accessing Options

All elements with an ID can be accessed via:

```lua
Library.Options["ToggleId"]:SetValue(true)
Library.Options["SliderId"]:SetValue(75)
Library.Options["DropdownId"]:SetValue("Option 2")
```

## Destroying the Window

```lua
Library:Destroy()
```

## License

This project is for educational purposes. Credit to the original Fluent library authors.

## Links

- Fluent Plus: [https://docs.fluent-pl.us/](https://docs.fluent-pl.us/)
- Icon Packs: [https://github.com/Footagesus/Icons](https://github.com/Footagesus/Icons)

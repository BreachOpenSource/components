-- Components
-- https://github.com/BreachOpenSource/components
-- Breach Interactive Open Source - licensed under GNU GPLv3

local toolbar = plugin:CreateToolbar("Components")
local pluginButton = toolbar:CreateButton("Components", "Drag & drop UI components and apply changes in a second", "rbxassetid://137427707960733")
local info = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Right,
	false, --initially enabled
	false, --override previous state
	200, --default weight
	343, --default height
	200, --min weight
	343 --min height
)

local ui = script.Parent:WaitForChild("Main", 20)

local widget = plugin:CreateDockWidgetPluginGuiAsync("Components", info)
widget.Title = "Components"
ui.Parent = widget

pluginButton.Click:Connect(function()
    widget.Enabled = not widget.Enabled
end)
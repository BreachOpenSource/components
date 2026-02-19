# Components
A Roblox Studio plugin to drag & drop UI components and apply changes in a second, similar to packages, but 10x better & faster.\
Made with [Rojo](https://github.com/rojo-rbx/rojo)

If you're familiar with React, you will already know this concept by heart. You create the frame, button or any UI object you want to make a component, open the plugin, press new, select your object, and click save. To use your component, simply click on it and it will be inserted.

To edit your components, press the Edit button and select your component. The component will be automatically inserted into a new ScreenGui in StarterGui. Edit it how you want. When you're done, click apply changes. Your changes will now be replicated to all components in your game.

## Installation

### 1. Roblox Creator Store

**Download the plugin**\
https://create.roblox.com/store/asset/96401100901795/Components

### 2. Local plugin

> [!WARNING]
> Your local plugin will not auto update when a new version is released. If you are a casual user and won't be editing the code of the plugin, we highly recommend downloading it from the Creator Store.

1. **Build the place with Rojo**\
To build the place from scratch, use:\
`rojo build -o "Components.rbxl"`\
Next, open Components.rbxl in Roblox Studio.\
If you want to sync your changes with VSC or any other IDE, run `rojo serve` and use the plugin\
\
If you don't already have Rojo, you can install it & read more about it [here](https://rojo.space/docs/v7)

2. **Select the plugin folder**\
Navigate to `ServerScriptService` and select the `Components` folder

3. **Create the local plugin**\
Right click on the `Components` folder and press `Save / Export` > `Save as Local Plugin`

## Set it up with Rojo

Since the plugin was made with Rojo, you can clone the repository and start editing it yourself. If you do plan on making changes, please help us and other users out by creating a pull request if your change could be useful for others. It helps us a lot.

To build the place from scratch, use:\
`rojo build -o "Components.rbxl"`
Next, open Components.rbxl in Roblox Studio and start the Rojo server:\
`rojo serve`

Take a look at the [Rojo documentation](https://rojo.space/docs/v7/) for more information on how to get started.

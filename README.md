# Components
A Roblox Studio plugin to drag & drop UI components and apply changes in a second.\
Made with [Rojo](https://github.com/rojo-rbx/rojo) - Breach Interactive Open Source, licensed under [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)

> [!NOTE]
> The plugin contains destructive behavior. Read section "How it works" for additional information

If you're familiar with React, you will already know this concept by heart. You create the frame, button or any UI object you want to make a component, open the plugin, press new, select your object, and click save. To use your component, simply click on it and it will be inserted.

To edit your components, press the Edit button and select your component. The component will be automatically inserted into a new temporary ScreenGui in StarterGui. Edit it how you want. When you're done, click apply changes. Your changes will now be replicated to all components in your game.

## How it works
Whenever you make a new instance of your component, that instance gets an attribute inserted called `ComponentIdentifier` with a randomly generated code. This code is shared across all instances of that specific component. Whenever you press apply changes after editing your component, the plugin will search the game for instances with that attribute matching the `ComponentIdentifier` of the component. If it matches, the old component will be destroyed and replaced by your new component. Elements listed in the table below such as `Script`, `LocalScript`, `ModuleScript` will be saved and placed in a temporary storage folder and reinserted into the new component after. All other children will be destroyed. To exclude children and prevent them from getting destroyed, parent them under a `Folder` under the instance of your component. Folders are saved, meaning anything you place inside of them will not get destroyed, but carried over.

| Element                                                             | Saved                                                                |
| ------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `Script`, `LocalScript`, `ModuleScript`                             | ✔️ Yes                                                               |
| `Folder`                                                            | ✔️ Yes, useful for saving children that would typically be destroyed |
| Attributes of the instance                                          | ✔️ Yes                                                               |
| Properties of the instance (`TextColor3`, `BackgroundColor3`, etc.) | ✖️ No, will be replaced by the component's properties                |
| All other children                                                  | ✖️ No                                                                |

The entire component instance is destroyed and replaced with a fresh clone of the edited template, except for preserved elements listed above.

## Use cases
- Large, UI-heavy games where consistency is key
- POS systems, registers, kiosks
- Admin panels

## Limitations
- The plugin only supports saving UI components, meaning your component must be a `Frame`, `TextButton`, `ImageLabel`, `TextLabel`, etc.
- There is no current way to exclude certain instances of your component from being overwritten, but this is planned to be added in the future

## Installation

### 1. Roblox Creator Store

**Download the plugin**\
https://create.roblox.com/store/asset/96401100901795/Components

### 2. Local plugin (ready to use)

> [!WARNING]
> Your local plugin will not auto update when a new version is released.

1. **Install the plugin file**\
https://github.com/BreachOpenSource/components/releases/local

2. **Add your plugin to Roblox Studio**\
   Open any place, go to the top and press `Plugins`\
   Click on `Plugins Folder`\
   Drag and drop the plugin file from where you saved it and place it in the plugins folder\
   The plugin will be automatically added in the `Plugins` section of Studio, but in some cases, you may need to restart Studio for changes to apply

### 3. Local plugin (via Rojo)

> [!WARNING]
> Your local plugin will not auto update when a new version is released. If you are a casual user and won't be editing the code of the plugin, we highly recommend downloading it from the Creator Store. If you prefer a local plugin and will not be editing the code of the plugin, [click here](https://github.com/BreachOpenSource/components/releases/local) to get the latest release

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

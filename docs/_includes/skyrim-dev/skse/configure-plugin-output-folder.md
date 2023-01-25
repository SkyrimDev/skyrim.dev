This SKSE plugin template can be configured to automatically copy the
compiled SKSE plugin `.dll` into your Skyrim `Data` folder or the `mods` folder
used by your mod manager (_e.g. Mod Organizer 2 or Vortex_).

## `Mods` folder

If you are using a mod manager, you can configure this template to output the
compiled `.dll` to your `mods` folder.

1. Find your `mods` folder
2. Configure the `SKYRIM_MODS_FOLDER` environment variable

To find your `mods` folder, open your mod manager and find the `mods` path
in the settings.

> Mod Organizer 2:
> 
> ![Mod Organizer 2 - Mods folder path](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/MO2/MO2SettingsModsFolder.png)

> Vortex:
> 
> ![Vorted - Mods folder path](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Vortex/VortexSettingsModsFolder.png)

Once you have the path of your `mods` folder:

- open the Start menu, type '_environment_', and choose '_Edit environment variables for your account_'

  ![Edit environment varioables for your account](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/Edit%20Environment%20Variables%20for%20Account.png){:width='75%'}

- Click `New` to create a new environment variable

- Give it the name **`SKYRIM_MODS_FOLDER`** and the value should be the path to your `mods` folder:

  ![Setting the SKYRIM_MODS_FOLDER environment variable](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/SKYRIM_MODS_FOLDER.png)

## `Data` folder

To output the compiled SKSE plugin directly into your Skyrim folder:

1. Find your Skyrim game folder
2. Configure the `SKYRIM_FOLDER` environment variable

To find your Skyrim game folder, open your Skyrim game in Steam or GOG.

> Steam:
>
> Click the "cog wheel", then choose "Manage" > "Browse Local Files".
> 
> ![Steam - Manage - Browse Local Files](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Steam/Steam%20Manage%20Browse%20Local%20Files.png)

> GOG:
> 
> Click the settings button, then choose "Manage installation" > "Show folder".
> 
> ![GOG - Manage Installation - Show Folder](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/GOG/GOG%20Manage%20Installation%20Show%20Folder.png)

Once you have the path of your Skyrim game folder:

- open the Start menu, type '_environment_', and choose '_Edit environment variables for your account_'

  ![Edit environment varioables for your account](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/Edit%20Environment%20Variables%20for%20Account.png){:width='75%'}

- Click `New` to create a new environment variable

- Give it the name **`SKYRIM_FOLDER`** and the value should be the path to your Skyrim game folder:

  ![Setting the SKYRIM_MODS_FOLDER environment variable](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/SKYRIM_FOLDER.png)
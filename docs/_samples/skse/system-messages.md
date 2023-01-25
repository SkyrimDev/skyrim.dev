---
permalink: /skse/system-messages
title: SKSE System Messages
layout: single
# classes: wide
toc: true
toc_sticky: true
toc_label: Table of contents
always_show_sidebar: true
sidebar:
  nav: skse
excerpt: "SKSE System Messages: New game, Save game, Load game, etc"
header:
#   image: https://openclipart.org/image/400px/69763
#   teaser: https://openclipart.org/image/400px/38719
  overlay_image: https://raw.githubusercontent.com/SkyrimDev/Images/main/images/logos/SkyrimScripting/BackgroundWide.png
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "[_youtube.com/SkyrimScripting_](https://youtube.com/SkyrimScripting)"
  actions:
    - label: "Download Sample"
      url: "#"
---

# SKSE System Messages

When certain events happen, SKSE sends "_messages_" which your plugin can listen for:

## Types of messages

| Message         | Description                                                                                                          |
| --------------- | -------------------------------------------------------------------------------------------------------------------- |
| `kPostLoad`     | Sent once all SKSE plugins have been loaded.                                                                         |
| `kPostPostLoad` | Sent immediately after `kPostLoad` has been sent to all plugins. (_Used to help coordinate cross-plugin messaging._) |
| `kInputLoaded`  | Sent after the game's input initializes, right before the Main Menu initializes                                      |
| `kDataLoaded`   | Sent after all of the game plugin files have been loaded (all Forms are loaded)                                      |
| `kNewGame`      | Sent after a new game has been created, but before the game has loaded                                               |
| `kSaveGame`     | Sent when saving a game                                                                                              |
| `kDeleteGame`   | Sent right before deleting the .skse cosave and the .ess save                                                        |
| `kPreLoadGame`  | Runs before the savegame is loaded by Skyrim                                                                         |
| `kPostLoadGame` | Runs after the savegame has been loaded by Skyrim.                                                                   |

## Listening for messages

Registration of a plugin's listener function is done via the SKSE Messaging Interface:

{% include skyrim-dev/snippet-begin.liquid language="cpp" %}auto* messagingInterface = SKSE::GetMessagingInterface();
{% include skyrim-dev/snippet-end.liquid %}

Use `RegisterListener` to provide a callback which returns `void` and accepts a pointer to the `Message` being sent:

{% include skyrim-dev/snippet-begin.liquid language="cpp" %}messagingInterface->RegisterListener(OnMessage);

// ...

void OnMessage(SKSE::MessagingInterface::Message* message) {
    // This function can read the Message* being sent 
}
{% include skyrim-dev/snippet-end.liquid %}

## Message*

An SKSE `Message` has 4 fields:

| Field       | Description                                                                                               |
| ----------- | --------------------------------------------------------------------------------------------------------- |
| `->type`    | An integer representing one of the enum values listed above<br />(_`kDataLoaded`, `kSaveGame`, ..._)      |
| `->sender`  | The name of the plugin which sent this message<br />(_For system messages, this will always be `"SKSE"`_) |
| `->data`    | A `void*` pointing at a data structure sent with this message, if any                                     |
| `->dataLen` | If `data` is not a `nullptr`, this will be the `sizeof` the `data` structure                              |

### Provided `data` for different types of messages

Some SKSE messages are sent with `data`:

| Message         | Description                                             |
| --------------- | ------------------------------------------------------- |
| `kPostLoad`     | (_no data_)                                             |
| `kPostPostLoad` | (_no data_)                                             |
| `kInputLoaded`  | (_no data_) ? _todo: verify_ ?                          |
| `kDataLoaded`   | (_no data_) ? _todo: verify_ ?                          |
| `kNewGame`      | CharGen TESQuest*                                       |
| `kSaveGame`     | (_???_) ? _todo: verify_ ?                              |
| `kDeleteGame`   | `char*` file path of .ess savegame file                 |
| `kPreLoadGame`  | `char*` file path of .ess savegame file                 |
| `kPostLoadGame` | bool, true if game successfully loaded, false otherwise |

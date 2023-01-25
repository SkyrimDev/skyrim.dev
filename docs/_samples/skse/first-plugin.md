---
permalink: /skse/first-plugin
title: Your first SKSE plugin in C++
excerpt: "Start your adventure today!"

toc: true
toc_sticky: true
toc_label: Table of contents

always_show_sidebar: true
sidebar:
  nav: skse

layout: single
# classes: wide

header:
  overlay_image: /assets/images/skyrim.dev/Logos/SkyrimScripting/BackgroundWide.png
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "[_youtube.com/SkyrimScripting_](https://youtube.com/SkyrimScripting)"
  actions:
  - label: "Download Sample"
    url: "https://github.com/SkyrimDev/HelloWorld-using-CommonLibSSE-NG"

sample_name: "Hello, world!"
sample_project: HelloWorld-using-CommonLibSSE-NG
sample_project_url: "https://github.com/SkyrimDev/HelloWorld-using-CommonLibSSE-NG"
---

# Your first SKSE plugin in C++

> <i class="fa-duotone fa-dragon"></i> Your adventure begins today.

In this tutorial, you will:

- <i class="fa-duotone fa-screwdriver-wrench"></i> Setup the tools required to create SKSE plugins
- <i class="fa-duotone fa-download"></i> Download [SKSE plugin template][template]
- <i class="fa-duotone fa-gears"></i> Configure the SKSE plugin
- <i class="fa-duotone fa-hammer"></i> Build the SKSE plugin
- <i class="fa-duotone fa-circle-play"></i> Run the SKSE plugin in Skyrim
- <i class="fa-duotone fa-face-monocle"></i> Code review

> This tutorial does not require any C++ knowledge.

# <i class="fa-regular fa-circle-info"></i> Requirements

{% include skyrim-dev/skse/skse-plugin-requirements.md %}

# <i class="fa-duotone fa-screwdriver-wrench"></i> Setup the tools required to create SKSE plugins

{% include skyrim-dev/skse/setup-required-tools.md %}

# <i class="fa-duotone fa-download"></i> Download SKSE plugin template

{% include skyrim-dev/skse/download-template.md %}

# <i class="fa-duotone fa-gears"></i> Configure the SKSE plugin

{% include skyrim-dev/skse/configure-plugin-output-folder.md %}

> <i class="fa-regular fa-circle-info"></i> View the `README` of the sample project for any additionally required configuration

# <i class="fa-duotone fa-hammer"></i> Build the SKSE plugin

{% include skyrim-dev/skse/build-skse-plugin.md %}

# <i class="fa-duotone fa-circle-play"></i> Run the SKSE plugin in Skyrim

{% include skyrim-dev/skse/run-skse-plugin.md %}

## See the SKSE plugin in action

The {{ page.sample_name }} template prints a message to the Skyrim `~` game console.

This can be viewed by launching the game and, at the Main Menu, press the `~` or
<code>`</code> key to open the console.

You should see the message: "Hello, world!"

[![Skyrim Main Menu Console Hello world](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Skyrim/Main%20Menu%20-%20Console%20-%20Hello%20world.png)](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Skyrim/Main%20Menu%20-%20Console%20-%20Hello%20world.png)

# <i class="fa-duotone fa-face-monocle"></i> Code review

## `Plugin.cpp`

{% include skyrim-dev/code-snippet.liquid file="samples/HelloWorld-using-CommonLibSSE-NG/plugin.cpp" language="cpp" %}

## `CMakeLists.txt`

{% include skyrim-dev/code-snippet.liquid file="samples/HelloWorld-using-CommonLibSSE-NG/CMakeLists.txt" language="cmake" region="set_project_name" %}

{% include skyrim-dev/common-markdown-links.md %}
[template]: {{ page.sample_project_url }}
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

{% comment %}
{% include skyrim-dev/code-snippet.liquid file="samples/HelloWorld-using-CommonLibSSE-NG/PCH.h" language="cpp" %}
{% endcomment %}

# <i class="fa-duotone fa-screwdriver-wrench"></i> Setup the tools required to create SKSE plugins

- <i class="fa-duotone fa-download"></i> Download and install [Visual Studio 2022][]
- When installing, choose the **`Desktop development with C++`** module

![Desktop development with C++](/assets/images/skyrim.dev/screenshots/Visual Studio/VS Desktop Development with Cpp.png)

# <i class="fa-duotone fa-download"></i> Download SKSE plugin template
# <i class="fa-duotone fa-gears"></i> Configure the SKSE plugin
# <i class="fa-duotone fa-hammer"></i> Build the SKSE plugin
# <i class="fa-duotone fa-circle-play"></i> Run the SKSE plugin in Skyrim
# <i class="fa-duotone fa-face-monocle"></i> Code review

---

> <i class="fa-regular fa-circle-info"></i> This plugin uses [CommonLibSSE-NG][].

{% include skyrim-dev/common-markdown-links.md %}
[template]: {{ page.sample_project_url }}
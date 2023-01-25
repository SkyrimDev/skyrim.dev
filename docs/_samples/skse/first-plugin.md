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


# <i class="fa-duotone fa-screwdriver-wrench"></i> Setup the tools required to create SKSE plugins

{% include skyrim-dev/skse/setup-required-tools.md %}

# <i class="fa-duotone fa-download"></i> Download SKSE plugin template

- Visit [{{ page.sample_project_url }}]({{ page.sample_project_url }})

- Open the `Code` drop-down:

  ![GitHub project Code drop-down](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/GitHub/Code%20Dropdown.png)

- From there, you can `Download ZIP`, `Open with Visual Studio`, `Open with GitHub Desktop`,
  or copy the git URL to clone the repository manually. 

## <i class="fa-duotone fa-copy"></i> Use this template (Optional)

If you plan on creating a new project of your own from this template, you can
use the `Use a new template` drop-down to quickly create a new GitHub repository
using this template as a starting point.

![Use this template - Create a new repository](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/GitHub/Use%20this%20template%20-%20Create%20a%20new%20repository.png)

# <i class="fa-duotone fa-gears"></i> Configure the SKSE plugin

# <i class="fa-duotone fa-hammer"></i> Build the SKSE plugin
# <i class="fa-duotone fa-circle-play"></i> Run the SKSE plugin in Skyrim
# <i class="fa-duotone fa-face-monocle"></i> Code review

---

{% include skyrim-dev/code-snippet.liquid file="samples/HelloWorld-using-CommonLibSSE-NG/PCH.h" language="cpp" %}

> <i class="fa-regular fa-circle-info"></i> This plugin uses [CommonLibSSE-NG][].

{% include skyrim-dev/common-markdown-links.md %}
[template]: {{ page.sample_project_url }}
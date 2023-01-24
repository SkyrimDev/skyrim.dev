---
permalink: /skse/native-papyrus-functions
title: Native Papyrus Functions
layout: single
classes: wide
# toc: true
# toc_sticky: true
# toc_label: Table of contents
always_show_sidebar: true
sidebar:
  nav: skse
excerpt: "Implement custom `native` Papyrus functions in C++"
header:
  overlay_image: /assets/images/skyrim.dev/Logos/SkyrimScripting/BackgroundWide.png
  overlay_filter: 0.5 # same as adnative-papyrus-functionsding an opacity of 0.5 to a black background
  caption: "[_youtube.com/SkyrimScripting_](https://youtube.com/SkyrimScripting)"
  actions:
    - label: "Download Sample"
      url: "#"
---

# Native Papyrus Functions

{% include skyrim-dev/snippet-begin.liquid language="papyrus" %}scriptName MyPapyrusScript

string function MyNativeFunction() global native
{% include skyrim-dev/snippet-end.liquid %}

{% include skyrim-dev/snippet-begin.liquid language="cpp" %}std::string MyNativeFunction(RE::StaticFunctionTag*) { return "Hello from C++!"; }

bool BindPapyrusFunctions(RE::BSScript::IVirtualMachine* vm) {
    vm->RegisterFunction("MyNativeFunction", "MyPapyrusScript", MyNativeFunction);
    return true;
}

SKSEPluginLoad(const SKSE::LoadInterface *skse) {
    SKSE::Init(skse);
    SKSE::GetPapyrusInterface()->Register(BindPapyrusFunctions);
    return true;
}
{% include skyrim-dev/snippet-end.liquid %}

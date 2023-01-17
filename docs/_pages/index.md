---
title: "Some Title"
layout: collection
collection: docs
entries_layout: grid
classes: wide
permalink: /
author_profile: true
show_links: true
show_download_button: true
always_show_sidebar: true
sidebar:
  nav: sidebar
---

## Header

{% include skyrim-dev/code-snippet.html file="examples/foo.psc" region="Header" %}

## OnInit

{% include skyrim-dev/code-snippet.html file="examples/foo.psc" region="OnInit" %}

## Whole file

{% include skyrim-dev/code-snippet.html file="examples/foo.psc" %}
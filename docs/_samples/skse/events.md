---
permalink: /skse/events
title: Game Events
layout: single
classes: wide
# toc: true
# toc_sticky: true
# toc_label: Table of contents
always_show_sidebar: true
sidebar:
  nav: skse
excerpt: "Listen for game events: OnActivate, OnHit, OnMenuOpen, etc"
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

# Events

{% include skyrim-dev/snippet-begin.liquid language="cpp" %}#include "logger.h"

class OurEventSink : public RE::BSTEventSink<RE::TESHitEvent>,
                     public RE::BSTEventSink<RE::TESActivateEvent>,
                     public RE::BSTEventSink<SKSE::CrosshairRefEvent>,
                     public RE::BSTEventSink<RE::MenuOpenCloseEvent>,
                     public RE::BSTEventSink<RE::InputEvent*> {
    OurEventSink() = default;
    OurEventSink(const OurEventSink&) = delete;
    OurEventSink(OurEventSink&&) = delete;
    OurEventSink& operator=(const OurEventSink&) = delete;
    OurEventSink& operator=(OurEventSink&&) = delete;

public:
    static OurEventSink* GetSingleton() {
        static OurEventSink singleton;
        return &singleton;
    }

    RE::BSEventNotifyControl ProcessEvent(const RE::TESHitEvent* event,
                                          RE::BSTEventSource<RE::TESHitEvent>*) {
        auto targetName = event->target->GetBaseObject()->GetName();
        auto sourceName = event->cause->GetBaseObject()->GetName();
        logger::info("{} hit {}", sourceName, targetName);
        if (event->flags.any(RE::TESHitEvent::Flag::kPowerAttack))
            logger::info("Ooooo power attack!");
        return RE::BSEventNotifyControl::kContinue;
    }

    RE::BSEventNotifyControl ProcessEvent(const RE::TESActivateEvent* event,
                                          RE::BSTEventSource<RE::TESActivateEvent>*) {
        auto activatedName = event->objectActivated->GetBaseObject()->GetName();
        auto activatorName = event->actionRef->GetBaseObject()->GetName();
        logger::info("{} activated {}", activatorName, activatedName);
        return RE::BSEventNotifyControl::kContinue;
    }

    RE::BSEventNotifyControl ProcessEvent(const SKSE::CrosshairRefEvent* event,
                                          RE::BSTEventSource<SKSE::CrosshairRefEvent>*) {
        if (event->crosshairRef) {
            logger::info("Crosshair is over {}", event->crosshairRef->GetBaseObject()->GetName());
        }
        return RE::BSEventNotifyControl::kContinue;
    }

    RE::BSEventNotifyControl ProcessEvent(const RE::MenuOpenCloseEvent* event,
                                          RE::BSTEventSource<RE::MenuOpenCloseEvent>*) {
        if (event->opening)
            logger::info("OPEN MENU {}", event->menuName);
        else
            logger::info("CLOSE MENU {}", event->menuName);
        return RE::BSEventNotifyControl::kContinue;
    }

    RE::BSEventNotifyControl ProcessEvent(RE::InputEvent* const* eventPtr,
                                          RE::BSTEventSource<RE::InputEvent*>*) {
        if (!eventPtr) return RE::BSEventNotifyControl::kContinue;

        auto* event = *eventPtr;
        if (!event) return RE::BSEventNotifyControl::kContinue;

        if (event->GetEventType() == RE::INPUT_EVENT_TYPE::kButton) {
            auto* buttonEvent = event->AsButtonEvent();
            auto dxScanCode = buttonEvent->GetIDCode();
            logger::info("Pressed key {}", dxScanCode);
        }

        return RE::BSEventNotifyControl::kContinue;
    }
};

void OnMessage(SKSE::MessagingInterface::Message* message) {
    if (message->type == SKSE::MessagingInterface::kInputLoaded)
        RE::BSInputDeviceManager::GetSingleton()->AddEventSink(OurEventSink::GetSingleton());
}

SKSEPluginLoad(const SKSE::LoadInterface* skse) {
    SKSE::Init(skse);
    SetupLog();

    auto* eventSink = OurEventSink::GetSingleton();

    // ScriptSource
    auto* eventSourceHolder = RE::ScriptEventSourceHolder::GetSingleton();
    eventSourceHolder->AddEventSink<RE::TESHitEvent>(eventSink);
    eventSourceHolder->AddEventSink<RE::TESActivateEvent>(eventSink);

    // SKSE
    SKSE::GetCrosshairRefEventSource()->AddEventSink(eventSink);

    // UI
    RE::UI::GetSingleton()->AddEventSink<RE::MenuOpenCloseEvent>(eventSink);

    // Input Device
    SKSE::GetMessagingInterface()->RegisterListener(OnMessage);

    return true;
}
{% include skyrim-dev/snippet-end.liquid %}

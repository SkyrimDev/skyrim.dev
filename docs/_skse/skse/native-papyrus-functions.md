---
tagline: "Some custom tagline"
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

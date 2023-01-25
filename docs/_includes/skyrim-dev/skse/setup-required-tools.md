You will need:

1. <i class="fa-duotone fa-download"></i> [Visual Studio 2022][] (_required to compile C++ SKSE plugins_)
2. <i class="fa-duotone fa-download"></i> [`vcpkg`][] (_required to download C++ libraries_)

## Visual Studio 2022

- Download from [https://visualstudio.microsoft.com/vs/community/](https://visualstudio.microsoft.com/vs/community/)

- When installing, choose the **`Desktop development with C++`** module

![Desktop development with C++](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/VS%20Desktop%20Development%20with%20Cpp.png)

## `vcpkg`

- Download or clone GitHub repository [https://github.com/microsoft/vcpkg](https://github.com/microsoft/vcpkg)

- In the downloaded `vcpkg` folder, double-click `bootstrap-vcpkg.bat` to run it
  > _A command prompt may briefly open and then close while `vcpkg` is bootstrapped_

- Open the Start menu, type '_environment_', and choose '_Edit environment variables for your account_'

  ![Edit environment varioables for your account](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/Edit%20Environment%20Variables%20for%20Account.png){:width='75%'}

- Click `New` to create a new environment variable

- Give it the name `VCPKG_ROOT` and the value should be the path to the `vcpkg` folder you downloaded:

  ![Setting the VCPKG_ROOT environment variable](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Setting%20Environment%20Variables/VCPKG_ROOT.png)

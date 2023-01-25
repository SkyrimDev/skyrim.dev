> <i class="fa-regular fa-circle-info"></i> _The screenshots in this section are generic and might not exactly match what you will see for your SKSE template._

Open the folder of the template you downloaded in a C++ code editor.

One of the easiest ways of doing this is to:

- Right-click the folder of the template project in Windows File Explorer
- From the right-click context menu, choose "**Open with &lt;your preferred editor&gt;**"

  ![Windows File Explorer Right-Click Context Menu Text Editor Open Options](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Windows/Context%20Menu%20-%20Open%20with%20text%20editor.png)

  > <i class="fa-regular fa-circle-info"></i> In Windows 11, you may need to choose "Show more options" for these options to become available

- _Alternatively, open your C++ code editor of choice and open the template folder from there (the steps will be specific to your editor application)._

Once you open the template folder, the steps will be different based on your C++ code editor.

## Visual Studio

Once you open the template folder in Visual Studio, it will automatically detect the project is a CMake project
and display the CMake page.

![Visual Studio CMake Splash Screen](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/Visual%20Studio%20CMake%20Splash%20Screen.png)

At the same time, Visual Studio will automatically run a CMake configure for your project. You should see the **Output** window open and display the CMake output.

[![Visual Studio performing CMake configure](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/Visual%20Studio%20-%20Full%20Screen%20-%20After%20CMake%20configure.png)](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/Visual%20Studio%20-%20Full%20Screen%20-%20After%20CMake%20configure.png)

> <i class="fa-regular fa-circle-info"></i> If you configured the project correctly, the **Output** should contain the text _"SKSE plugin output folder: &lt;path you configured earlier&gt;"_

After you see "_CMake generation finished._", you are ready to compile your SKSE plugin.

Press **`F7`** or use the "Build" > "Build all" menu option.

![Visual Studio - Build - Buila All](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/Visual%20Studio%20-%20Build%20-%20Build%20All.png)

If everything compiles successfully, you should see "Build All succeeded"

![Visual Studio - Build All succeeded](https://raw.githubusercontent.com/SkyrimDev/Images/main/images/screenshots/Visual%20Studio/Build%20All%20succeeded.png)

## Other

For other editors, reference their documentation for building CMake projects.

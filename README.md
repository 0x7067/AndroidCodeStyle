# Android Code Style

Code formatting rules for Android Studio

## Features
- Based on grandcentrix code style (https://github.com/grandcentrix/AndroidCodeStyle)
- No star imports
- `android:id` after `xmlns` declaration in XML layouts
- Keep lifecycle methods together
- Keep getters and setters together
- Advanced code Arrangement rules for Java (Sort methods alphabetically (a-z) and by visibility (`public`-`private`))
  - Inner classes (classes, interfaces, enums)
  - Fields (grouped by visibility, a-z)
  - public static methods
  - Constructors
  - Android Lifecycle methods in correct order
  - Methods grouped by visibility, a-z
  - static methods (grouped by visibility (except public), a-z)
  - keep overriden methods together (in order)
  - keep dependent methods together (organized by depth level)

## Installation on your local machine
1. Run the install.sh script
2. Restart AndroidStudio
3. Select the codestyle scheme via `Preferences --> Editor --> Code Style`.

The codestyle will be enabled/used for **all projects** that are used with AndroidStudio!

## Contributing
To contribute just change the code style locally to your needs.
Then you can create a PR to this repository.

The PR should always contain:
* Some information what have changed.
* An updated [`Kobe.xml`](styles/Kobe.xml).

## License
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/legalcode)

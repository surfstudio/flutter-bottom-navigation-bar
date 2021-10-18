# Bottom Navigation Bar

[![Build Status](https://shields.io/github/workflow/status/surfstudio/SurfGear/build?logo=github&logoColor=white)](https://github.com/surfstudio/SurfGear/tree/main/packages/bottom_navigation_bar)
[![Coverage Status](https://img.shields.io/codecov/c/github/surfstudio/SurfGear?flag=bottom_navigation_bar&logo=codecov&logoColor=white)](https://codecov.io/gh/surfstudio/SurfGear)
[![Pub Version](https://img.shields.io/pub/v/bottom_navigation_bar?logo=dart&logoColor=white)](https://pub.dev/packages/bottom_navigation_bar)
[![Pub Likes](https://badgen.net/pub/likes/bottom_navigation_bar)](https://pub.dev/packages/bottom_navigation_bar)
[![Pub popularity](https://badgen.net/pub/popularity/bottom_navigation_bar)](https://pub.dev/packages/bottom_navigation_bar/score)
![Flutter Platform](https://badgen.net/pub/flutter-platform/bottom_navigation_bar)

This package made by [Surf](https://surf.ru).

## About

Bottom navigation bar

## Description

Main classes:

1. [Bottom navigator](lib/src/bottom_navigator.dart)
2. [Bottom navigator bar](lib/src/bottom_nav_bar.dart)
3. [Type of tab](lib/src/bottom_nav_tab_type.dart)
4. [Relation between item in bar and content](lib/src/bottom_navigation_relationship.dart)

## Example

The easiest interaction with the library is as follows:

1. Initialize:

    ```dart
      final _selectorController = StreamController<BottomNavTabType>.broadcast();

      late List<BottomNavTabType> _types;
      late Map<BottomNavTabType, BottomNavigationRelationship> _map;

      var _isCustom = true;

      @override
      void initState() {
        super.initState();

        _types = const [
          BottomNavTabType(0),
          BottomNavTabType(1),
          BottomNavTabType(2),
        ];

        _map = {
          _types[0]: BottomNavigationRelationship(
            tabBuilder: () => _buildPage(const Color(0xFFFF0000)),
            navElementBuilder: (isSelected) => _buildElement(
              isSelected,
              const Color(0x55FF0000),
            ),
          ),
          _types[1]: BottomNavigationRelationship(
            tabBuilder: () => _buildPage(const Color(0xFF00FF00)),
            navElementBuilder: (isSelected) => _buildElement(
              isSelected,
              const Color(0x5500FF00),
            ),
          ),
          _types[2]: BottomNavigationRelationship(
            tabBuilder: () => _buildPage(const Color(0xFF0000FF)),
            navElementBuilder: (isSelected) => _buildElement(
              isSelected,
              const Color(0x550000FF),
            ),
          ),
        };

        _selectorController.stream.listen((type) => print(type.value));
      }
    ```
    
1. Display:

    ```dart
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            child:
                _isCustom ? _buildBottomNavigator() : _buildCustomBottomNavigator(),
          ),
        );
      }

      BottomNavigator _buildBottomNavigator() {
        return BottomNavigator(
          key: UniqueKey(),
          initialTab: _types[0],
          tabsMap: _map,
          selectController: _selectorController,
        );
      }

      BottomNavigator _buildCustomBottomNavigator() {
        return BottomNavigator.custom(
          key: UniqueKey(),
          tabsMap: _map,
          initialTab: _types[0],
          bottomNavBar: _buildNavBar(),
          selectController: _selectorController,
        );
      }
    ```

## BottomNavigator

Widget for simple switch content by selected item in bottom bar.
More details of using you can see in example.

## Installation

Add `bottom_navigation_bar` to your `pubspec.yaml` file:

```yaml
dependencies:
  bottom_navigation_bar: ^1.0.0
```

You can use both `stable` and `dev` versions of the package listed above in the badges bar.

## Changelog

All notable changes to this project will be documented in [this file](./CHANGELOG.md).

## Issues

For issues, file directly in the Issues section.

## Contribute

If you would like to contribute to the package (e.g. by improving the documentation, solving a bug or adding a cool new feature), please review our [contribution guide](../../CONTRIBUTING.md) first and send us your pull request.

Your PRs are always welcome.

## How to reach us

Please feel free to ask any questions about this package. Join our community chat on Telegram. We speak English and Russian.

[![Telegram](https://img.shields.io/badge/chat-on%20Telegram-blue.svg)](https://t.me/SurfGear)

## License

[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0)

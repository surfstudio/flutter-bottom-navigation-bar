// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:bottom_navigation_bar/src/bottom_nav_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:tabnavigator/tabnavigator.dart';

/// Class describes relations between navigation widget and content widget.
@immutable
class BottomNavigationRelationship {
  final TabBuilder tabBuilder;
  final NavElementBuilder navElementBuilder;

  const BottomNavigationRelationship({
    required this.tabBuilder,
    required this.navElementBuilder,
  });
}

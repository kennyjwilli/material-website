// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';

/// A Polymer `<main-app>` element.
@CustomTag('about-page')
class AboutPage extends PolymerElement
{
  @observable bool favoriteProjectsOpened = false;

  AboutPage.created() : super.created();

  void toggleFavoriteProjects()
  {
    favoriteProjectsOpened = !favoriteProjectsOpened;
  }

}

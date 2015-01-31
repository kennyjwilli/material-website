// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('about-page')
class AboutPage extends PolymerElement
{
  @observable bool favoriteProjectsOpened = false;

  AboutPage.created() : super.created();

  void toggleFavoriteProjects(Event event, var detail, var target)
  {
    favoriteProjectsOpened = !favoriteProjectsOpened;
    if(favoriteProjectsOpened)
    {
      target.icon = "remove";
    }else
    {
      target.icon = "add";
    }
  }

}

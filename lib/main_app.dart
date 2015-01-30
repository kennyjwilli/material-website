// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement
{
  @observable int selectedPage = 0;

  MainApp.created() : super.created();

  void blogClicked()
  {
    selectedPage = 1;
  }

  void portfolioClicked()
  {
    selectedPage = 2;
  }

  void contactClicked()
  {
    selectedPage = 3;
  }

  void aboutClicked()
  {
    selectedPage = 4;
  }

}

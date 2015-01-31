// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('accordion-item')
class AccordionItem extends PolymerElement
{
  @observable bool opened = false;
  @observable String title = "";
  @observable String icon = "add";
  AccordionItem.created() : super.created();

  void openedChanged(var old, var n)
  {
    _updateIcon();
  }

  void toggleCollapse(Event event, var detail, var target)
  {
    dispatchEvent(new CustomEvent('itemopened', detail: this));
    opened = !opened;
  }

  void _updateIcon()
  {
    if(opened)
    {
      icon = "remove";
    }else
    {
      icon = "add";
    }
  }
}

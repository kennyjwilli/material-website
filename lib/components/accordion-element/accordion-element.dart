// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('accordion-element')
class AccordionElement extends PolymerElement
{
  @observable bool autoclose = true;
  var _lastOpened = null;
  AccordionElement.created() : super.created();

  void itemOpened(Event event, var detail, var target)
  {
    if(autoclose)
    {
      if(_lastOpened != null && _lastOpened.opened == true && detail.opened == false)
      {
        _lastOpened.opened = false;
      }
      _lastOpened = detail;
    }
  }
}

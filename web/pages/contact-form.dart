// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('contact-form')
class ContactForm extends PolymerElement
{
  @observable String nameInput ="";
  @observable String emailInput ="";
  @observable String subjectInput ="";
  @observable String messageInput ="";

  ContactForm.created() : super.created();

  //TODO: Move form into its own element
  void sendForm()
  {

  }

  void clearForm()
  {
    nameInput = "";
    emailInput = "";
    subjectInput = "";
    messageInput = "";
    //Must update the label visibility due to the textarea
    $["messagePaperInput"].updateLabelVisibility("");
  }
}

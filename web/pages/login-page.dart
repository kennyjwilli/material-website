// Copyright (c) 2015, Kenny Williams. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('login-page')
class LoginPage extends PolymerElement
{
  //Register stuff
  @observable String regUsernameValue = "";
  @observable String regPasswordValue = "";
  @observable String regPasswordAgainValue = "";

  //Login stuff
  @observable String usernameValue = "";
  @observable String passwordValue = "";


  LoginPage.created() : super.created();

  void attached()
  {
    super.attached();
    _updatePasswordInvalid();
  }

  bool validatePassword()
  {
    if(regPasswordValue != regPasswordAgainValue || regPasswordAgainValue.isEmpty)
    {

      return false;
    }
    return true;
  }

  void inputChanged()
  {
    _updatePasswordInvalid();
  }

  void _updatePasswordInvalid()
  {
    shadowRoot.querySelector("#passwordAgain").isInvalid = !validatePassword();
  }

  void registerClicked()
  {

  }

  void loginClicked()
  {

  }

}

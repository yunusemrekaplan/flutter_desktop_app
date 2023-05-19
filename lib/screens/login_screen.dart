// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  String email = 'test@test.com';
  String password = '123';

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) async {
    return Future.delayed(loginTime).then((_) async {
      /*
      bool control = false;
      for(var person in personService.persons) {
        if(person.nickname == data.name) {
          control = true;
          if(person.password == data.password) {
            return null;
          }
          return "Şifre yanlış";
        }
      }
      if (!control) {
        return "Kullanıcı bulunamadı";
      }*/
      if (email != data.name) {
        return 'Kullanıcı bulunamadı';
      } else {
        if (password != data.password) {
          return 'Şifre yanlış';
        } else {
          return null;
        }
      }
    });
  }

  Future<String?> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      return "Şu anda bu hizmet verilememektedir!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      onLogin: _authUser,
      onRecoverPassword: _recoverPassword,
      onSubmitAnimationCompleted: () => Navigator.pushNamed(context, 'menu'),
    );
  }
}

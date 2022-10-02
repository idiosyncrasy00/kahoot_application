import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import './widget.dart';

import 'validate_util.dart';
// import 'inittial_screen.dart';
// import 'login_screen.dart';
import '../routing_names.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final margin = 0.0;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: WillPopScope(
        onWillPop: () async {
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //         builder: (BuildContext context) => const InittialScreen()),
          //     ModalRoute.withName('/'));
          Navigator.pushNamed(context, InitialScreenView);
          return true;
        },
        child: Form(
          key: formkey,
          child: Column(
            children: [
              headerScreen("Sign In", () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => LoginScreen()));
                Navigator.pushNamed(context, LoginScreenView);
              }),
              Expanded(
                  child: Body(
                [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "Create an account",
                      style: _textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ...itemTextFormField("Username", (value) {
                    return ValidateUtil.isNameUser(value)
                        ? null
                        : "Username Invalid";
                  }).children,
                  ...itemTextFormField("Email", (value) {
                    return ValidateUtil.isEmail(value)
                        ? null
                        : "Username Invalid";
                  }).children,
                  ...itemTextFormField("Password", (value) {
                    return ValidateUtil.isPassUser(value)
                        ? null
                        : "Username Invalid";
                  }).children,
                  button("Register", () {
                    if (formkey.currentState?.validate() == false) {
                      //register failed
                      showToast('Format Invalid',
                          position: ToastPosition.bottom);
                    } else {
                      Navigator.pushNamed(context, LoginScreenView);
                    }
                  },
                      textColor: Colors.white,
                      margin: const EdgeInsets.only(top: 20))
                ],
                alignment: CrossAxisAlignment.start,
              ))
            ],
          ),
        ),
      ),
    );
  }

  TextStyle get _textStyle => const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
}
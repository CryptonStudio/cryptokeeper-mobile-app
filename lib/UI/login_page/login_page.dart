import 'package:ck_login/UI/PIN_code_page/PIN_code_page.dart';
import 'package:ck_login/constants.dart';
import 'package:ck_login/validators.dart';
import 'package:ck_login/UI/widgets/custom_button.dart';
import 'package:ck_login/UI/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Validators validators = new Validators();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(
                    flex: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SvgPicture.asset(
                      "assets/svg/logo.svg",
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      "Crypto\nKeeper",
                      style: TextStyle(
                        height: 1.3,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: CustomColors.white,
                        height: 1.45,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: InputForm.filled(
                      validator: validators.baseValidator,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23, left: 20),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: CustomColors.white,
                        height: 1.45,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: InputForm.filled(
                      validator: validators.baseValidator,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: CustomButton.primary(
                        title: LangKeys.sign_in,
                        width: double.infinity,
                        onPress: () {
                          if (!formKey.currentState.validate()) {
                            return;
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PinCodePage(),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 20, right: 20, bottom: 25),
                    child: CustomButton.secondary(
                      title: LangKeys.sign_up,
                      onPress: () {
                        print("done");
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

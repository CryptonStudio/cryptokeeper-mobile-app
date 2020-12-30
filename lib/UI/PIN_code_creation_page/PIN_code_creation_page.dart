import 'package:ck_login/UI/PIN_code_creation_page/cubit/pin_code_creation_cubit.dart';
import 'package:ck_login/UI/widgets/PIN_code_keyboard.dart';
import 'package:ck_login/constants.dart';
import 'package:ck_login/services/secure_storage_service/i_secure_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PinCodePage extends StatefulWidget {
  @override
  _PinCodePageState createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  PinCodeCreationCubit pinCodeCreationCubit;

  @override
  void initState() {
    pinCodeCreationCubit = PinCodeCreationCubit(
      new ISecureStorageService("_pinCodeKey"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            "assets/svg/promo.svg",
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  child: Text(
                    LangKeys.enter_pin_code,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9D9DA6),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: dotsBuilder(),
                )
              ],
            ),
          ),
          PinCodeKeyboard(
            onCodeButtonPressed: pinCodeCreationCubit.enterCode,
            onRemoveButtonPressed: pinCodeCreationCubit.removeCode,
          ),
        ],
      ),
    );
  }

  Widget dot(bool colored) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: colored
              ? CustomColors.buttonBackGroundColor
              : CustomColors.disabledButtonBackGroundColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget dotsBuilder() {
    return BlocBuilder<PinCodeCreationCubit, PinCodeCreationState>(
      cubit: pinCodeCreationCubit,
      builder: (BuildContext context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.pinCode.length != PIN_CODE_LENGTH) ...[
              for (int i = 0; i < PIN_CODE_LENGTH; i++)
                dot(state.pinCode.length > i),
            ],
            if (state.pinCode.length == PIN_CODE_LENGTH) ...[
              for (int i = 0; i < PIN_CODE_LENGTH; i++)
                dot(state.confirmedPinCode.length > i),
            ]
          ],
        );
      },
    );
  }
}
